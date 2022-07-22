terraform {
    backend "s3" {
        key = "terraform/tfstate.tfstate"
        bucket = "vilius-remote-backend-2022"
        region = "us-east-1"
    }
}
