variable "server_names" {
    type = list(string)
}

resource "aws_instance" "db" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    count = length(var.server_names)

    tags = {
        Name = var.server_names[count.index]
    }
}

output "private_ip" {
    value = [aws_instance.db.*.private_ip]
}
