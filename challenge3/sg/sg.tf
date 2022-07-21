variable "sg_name" {
    type = string
}

variable "sg_ports" {
    type = list(number)
}

resource "aws_security_group" "web_traffic" {
    name = var.sg_name

    dynamic "ingress" {
        iterator = port
        for_each = var.sg_ports
        content {
            from_port = port.value
            to_port = port.value
            protocol = "TCP"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

    dynamic "egress" {
        iterator = port
        for_each = var.sg_ports
        content {
            from_port = port.value
            to_port = port.value
            protocol = "TCP"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }
}

output "sg_name" {
    value = aws_security_group.web_traffic.name
}
