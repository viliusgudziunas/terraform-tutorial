variable "web_name" {
    type = string
}

variable "sg_ports" {
    type = list(number)
    default = [80, 443]
}

resource "aws_instance" "web" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    security_groups = [module.sg.sg_name]
    user_data = file("${path.module}/server-script.sh")

    tags = {
        Name = var.web_name
    }
}

module "eip" {
    source = "../eip"
    instance_id = aws_instance.web.id
}

module "sg" {
    source = "../sg"
    sg_name = "Allow Web Traffic"
    sg_ports = var.sg_ports
}

output "public_ip" {
    value = module.eip.public_ip
}
