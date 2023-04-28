provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "output-bucket" {
  bucket = "sam-bucket15092001"
}

output "bucket_name" {
  value = aws_s3_bucket.output-bucket.id
}

output "bucket_arn" {
  value = aws_s3_bucket.output-bucket.arn
}

output "bucket_information" {
  value = "bucket name: ${aws_s3_bucket.output-bucket.id}, bucket arn: ${aws_s3_bucket.output-bucket.arn}"
}

output "all" {
  value = aws_s3_bucket.output-bucket
}