##############cloudfront##############################

data "aws_s3_bucket" "s3_bucket" {
  bucket = var.S3Bnombre
}

locals {
  s3_origin_id = var.s3_origin_id
}

resource "aws_cloudfront_origin_access_identity" "origin_access_identity" {
  comment = var.origin_access_identity
}

resource "aws_cloudfront_distribution" "s3_distribution" {


  origin {
    domain_name = data.aws_s3_bucket.s3_bucket.bucket_regional_domain_name
    # domain_name = aws_s3_bucket.buckets3.bucket_regional_domain_name
    origin_id  = local.s3_origin_id

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.origin_access_identity.cloudfront_access_identity_path
    }
}
 enabled = true
 is_ipv6_enabled  = true
 comment  = var.cloudfrontName
 default_root_object = "index.html"

 default_cache_behavior {
 allowed_methods = ["GET", "HEAD", "OPTIONS"]
 cached_methods  = ["GET", "HEAD"]
 target_origin_id = local.s3_origin_id
 

 forwarded_values {
 query_string = false

 cookies {
 forward = "none"
 }
 }

 #viewer_protocol_policy = "allow-all"
 viewer_protocol_policy = "redirect-to-https"
 min_ttl = 0
 default_ttl = 86400
 max_ttl = 31536000


 }

price_class = "PriceClass_100"

 restrictions {
 geo_restriction {
restriction_type = "none"
#locations = ["US", "CA", "GB", "DE"]
 }
 }

 tags = var.info_tags
 


  viewer_certificate {
  cloudfront_default_certificate = true
  }
  custom_error_response {
    
      error_code        = 403
      response_code      = 403
      response_page_path  = "/"
      error_caching_min_ttl = 10
    
  }
}
