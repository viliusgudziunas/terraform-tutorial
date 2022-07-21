provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "db" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"

    tags = {
        Name = "DB Server"
    }
}

resource "aws_instance" "web" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.web_traffic.name]
    user_data = file("${path.module}/server-script.sh")

    tags = {
        Name = "Web Server"
    }
}

resource "aws_eip" "web_ip" {
    instance = aws_instance.web.id
}

variable "sg_rules" {
    type = list(number)
    default = [80, 443]
}

resource "aws_security_group" "web_traffic" {
    name = "Allow Web Traffic"

    dynamic "ingress" {
        iterator = port
        for_each = var.sg_rules
        content {
            from_port = port.value
            to_port = port.value
            protocol = "TCP"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

    dynamic "egress" {
        iterator = port
        for_each = var.sg_rules
        content {
            from_port = port.value
            to_port = port.value
            protocol = "TCP"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }
}

output "PrivateIP" {
    value = aws_instance.db.private_ip
}

output "PublicIP" {
    value = aws_eip.web_ip.public_ip
}
