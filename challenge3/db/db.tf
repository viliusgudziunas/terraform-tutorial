variable "db_name" {
    type = string
}

resource "aws_instance" "db" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"

    tags = {
        Name = var.db_name
    }
}

output "private_ip" {
    value = aws_instance.db.private_ip
}
