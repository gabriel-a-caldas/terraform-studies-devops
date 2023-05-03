provider "aws" {
  region = "us-west-2"
}

resource "aws_iam_policy" "my_bucket_policy-03052023" {
  name = "list-bucket-policy"
  policy = file("./policy.iam")
}