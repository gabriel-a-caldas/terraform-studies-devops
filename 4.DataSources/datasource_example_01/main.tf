provider "aws"{
    region = "us-west-2"
}

data "aws_s3_bucket" "new-bucket"{
    bucket = "sam-bucket-15092001"
}

resource "aws_iam_policy" "my_bucket_policy"{
    name = "my-bucket-policy"

    policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "${data.aws_s3_bucket.new-bucket.arn}"
      ]
    }
  ]
}
POLICY
}