provider "aws" {
    region = "eu-west-1"
}

resource "aws_s3_bucket" "second_bucket"{
    bucket = "testgabriel1-second-bucket"
}
