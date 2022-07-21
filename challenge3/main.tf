provider "aws" {
    region = "us-east-1"
}

module "db" {
    source = "./db"
    db_name = "DB Server"
}

module "web" {
    source = "./web"
    web_name = "Web Server"
}

output "PrivateIP" {
    value = module.db.private_ip
}

output "PublicIP" {
    value = module.web.public_ip
}
