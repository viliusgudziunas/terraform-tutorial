provider "aws" {
    region = "us-east-1"
}

variable "vpc_name" {
    type = string
    default = "TerraformVPC"
}

variable "cidr_block" {
    type = string
    default = "192.168.0.0/24"
}

resource "aws_vpc" "vpc" {
    cidr_block = var.cidr_block

    tags = {
        Name = var.vpc_name
    }
}
