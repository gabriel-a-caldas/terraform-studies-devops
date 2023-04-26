provider "aws"{
    region = "us-west-2"
}
provider "aws"{
    region = "us-west-1"
    alias = "nt_california"
}

resource "aws_vpc" "oregon_vpc"{
    cidr_block = "10.10.0.0/24"
}

resource "aws_vpc" "north_california_vpc"{
    cidr_block = "10.10.1.0/24"
    provider = aws.nt_california # Quote References are deprecated!
}
