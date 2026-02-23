resource "aws_s3_bucket" "mybucket" {
  # bucket        = var.bucket_name
  bucket_prefix = var.my_bucket_prefix
  force_destroy = var.force_destroy
}