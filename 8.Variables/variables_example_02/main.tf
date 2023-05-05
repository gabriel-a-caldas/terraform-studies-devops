provider "aws" {
  region = "us-west-2"
}

variable "bucket_name"{
    description = "Name of the bucket"
}

variable "bucket_suffix" {
  default = "-abcdef"
}

resource "aws_s3_bucket" "generic_bucket" {
  bucket = "${var.bucket_name}${var.bucket_suffix}"
}
