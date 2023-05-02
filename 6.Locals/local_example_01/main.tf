provider "aws" {
  region = "us-west-2"
}

locals {
  first_part  = "hello"
  second_part = "${local.first_part}-there"
  bucket_name = "${local.second_part}-how-are-you-today-gabriel"
}

resource "aws_s3_bucket" "bucket" {
  bucket = local.bucket_name
}