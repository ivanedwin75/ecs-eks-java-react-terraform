# resource "aws_dynamodb_table" "basic-dynamodb-table" {
#   name           = var.nombreDb
#   billing_mode   = "PAY_PER_REQUEST"
# #   read_capacity  = 20
# #   write_capacity = 20
#   hash_key       = var.hash_key
#   range_key      = var.range_key

#   attribute {
#     name = var.hash_key
#     type = "S"
#   }

#   attribute {
#     name = var.range_key
#     type = "S"
#   }

# #   attribute {
# #     name = "TopScore"
# #     type = "N"
# #   }

# #   ttl {
# #     attribute_name = "TimeToExist"
# #     enabled        = false
# #   }

# #   global_secondary_index {
# #     name               = "GameTitleIndex"
# #     hash_key           = "GameTitle"
# #     range_key          = "TopScore"
# #     write_capacity     = 10
# #     read_capacity      = 10
# #     projection_type    = "INCLUDE"
# #     non_key_attributes = ["UserId"]
# #   }

#   tags = var.info_tags
# }