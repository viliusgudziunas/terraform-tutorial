variable "ec2name" {
    type = string
}

resource "aws_instance" "ec2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"

    tags = {
        Name = var.ec2name
    }
}
