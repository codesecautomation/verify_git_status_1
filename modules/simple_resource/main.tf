resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name
  # Insecure configuration for demonstration purposes
  acl    = "public-read"
}

variable "bucket_name" {
  type = string
}
