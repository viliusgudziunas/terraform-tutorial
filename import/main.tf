provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "myvpc2" {
    cidr_block = "172.31.0.0/16"
}
