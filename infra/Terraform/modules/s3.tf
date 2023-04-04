 resource "aws_s3_bucket" "buckets3" {
   bucket = var.S3Bnombre

   tags = var.info_tags
  

 }

 resource "aws_s3_bucket_public_access_block" "bucket_public_accessblock" {
   bucket = aws_s3_bucket.buckets3.id

   block_public_acls       = true
   block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
 }

 resource "aws_s3_bucket_ownership_controls" "bucket_own_control" {
  bucket = aws_s3_bucket.buckets3.id

   rule {
     object_ownership = "BucketOwnerEnforced"
   }
 }
