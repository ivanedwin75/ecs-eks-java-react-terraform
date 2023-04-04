resource "aws_cognito_user_pool" "cognito_pool_feedback" {

  name              = var.cog_userpool_nombre
  mfa_configuration = "OFF"

  schema {
    name                     = "email"
    developer_only_attribute = false
    attribute_data_type      = "String"
    mutable                  = true
    required                 = true

    string_attribute_constraints {
      min_length = 7
      max_length = 50
    }
  }

  password_policy {
    minimum_length                   = 8
    require_lowercase                = true
    require_numbers                  = true
    require_symbols                  = true
    require_uppercase                = true
    temporary_password_validity_days = 7
  }

  auto_verified_attributes = ["email"]

  admin_create_user_config {
    allow_admin_create_user_only = false
  }

  account_recovery_setting {
    recovery_mechanism {
      name     = "verified_phone_number"
      priority = 1
    }
  }

  username_configuration {
    case_sensitive = true
  }

  verification_message_template {
    default_email_option = "CONFIRM_WITH_CODE"
  }

  tags = var.info_tags
}

resource "aws_cognito_identity_provider" "google_provider_mapcre" {
  user_pool_id  = aws_cognito_user_pool.cognito_pool_feedback.id
  provider_name = "Google"
  provider_type = "Google"

  provider_details = {
    authorize_scopes = "profile email openid"
    client_id        = var.provider_client_id
    client_secret    = var.provider_client_secret
  }

  attribute_mapping = {
    email    = "email"
    name     = "names"
    username = "sub"
    given_name= "given_name"
    family_name= "family_name"
  }
}

resource "aws_cognito_user_pool_domain" "domain_mapcre" {
  domain       = "traveljournalproject${var.stage}"
  user_pool_id = aws_cognito_user_pool.cognito_pool_feedback.id
}

resource "aws_cognito_resource_server" "resource_server" {
  
  identifier = "https://${aws_cloudfront_distribution.s3_distribution.domain_name}"
  name       = "feedback_${var.stage}"

  scope {
    scope_name        = var.scope_name
    scope_description = var.scope_secret
  }

  user_pool_id = aws_cognito_user_pool.cognito_pool_feedback.id
}

resource "aws_cognito_user_pool_client" "client" {
  name                          = "traveljournal_cliente_app"
  user_pool_id                  = aws_cognito_user_pool.cognito_pool_feedback.id
  explicit_auth_flows           = ["ALLOW_CUSTOM_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_SRP_AUTH"]
  callback_urls                 = ["http://localhost:4200/", "https://${aws_cloudfront_distribution.s3_distribution.domain_name}/login"]
  logout_urls                   = ["http://localhost:4200/", "https://${aws_cloudfront_distribution.s3_distribution.domain_name}/login"]
  supported_identity_providers  = ["COGNITO", "Google"]
  allowed_oauth_scopes          = ["${aws_cognito_resource_server.resource_server.scope_identifiers[0]}", "aws.cognito.signin.user.admin", "email", "openid", "phone", "profile"]
  allowed_oauth_flows           = ["code", "implicit"]
  prevent_user_existence_errors = "ENABLED"
}

resource "aws_cognito_user_pool_client" "client_externo" {
  name                          = "traveljournal_externo"
  user_pool_id                  = aws_cognito_user_pool.cognito_pool_feedback.id
  explicit_auth_flows           = ["ALLOW_CUSTOM_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_SRP_AUTH"]
  callback_urls                 = ["http://localhost:4200/", "https://${aws_cloudfront_distribution.s3_distribution.domain_name}/login"]
  logout_urls                   = ["http://localhost:4200/", "https://${aws_cloudfront_distribution.s3_distribution.domain_name}/login"]
  supported_identity_providers  = ["COGNITO", "Google"]
  allowed_oauth_scopes          = ["${aws_cognito_resource_server.resource_server.scope_identifiers[0]}", "aws.cognito.signin.user.admin", "email", "openid", "phone", "profile"]
  allowed_oauth_flows           = ["code", "implicit"]
  prevent_user_existence_errors = "ENABLED"
  generate_secret               = true
}

data "aws_cognito_user_pools" "cognito" {
  name = aws_cognito_user_pool.cognito_pool_feedback.name
  depends_on = [
    aws_cognito_user_pool.cognito_pool_feedback
  ]
}
