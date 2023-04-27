provider "aws" {
    region = "us-west-2"
}

resource "aws_s3_bucket" "new_bucket"{
    bucket = "sam-bucket-15092001"
}
