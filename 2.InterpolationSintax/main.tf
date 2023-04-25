provider "aws"{
    region = "us-west-2"
}

resource "aws_vpc" "test_vpc"{
    cidr_block = "10.10.0.0/16"
}

resource "aws_security_group" "my_security_group"{
    vpc_id = aws_vpc.test_vpc.id
    name = "Test-Security-Group"
}

resource "aws_security_group_rule" "tls_in"{
    protocol = "tcp"
    security_group_id = aws_security_group.my_security_group.id
    from_port = 443
    to_port = 443
    type = "ingress"
    cidr_blocks = ["0.0.0.0/0"]
}