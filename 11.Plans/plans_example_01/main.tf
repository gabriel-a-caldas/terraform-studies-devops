
provider "aws"{
  region = "us-east-2"
}

resource "aws_sqs_queue" "test_queue"{
  name = "sam_queue"
}

