provider "aws" {
  region = "us-west-2"  # Change to your preferred region
}

# Create an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "your-unique-bucket-name"  # Replace with your actual bucket name
  acl    = "private"
}

# Set the ACL for the bucket using a separate resource
resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.id
  acl    = "private"
}
