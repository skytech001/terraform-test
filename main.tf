terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.19.0"
    }
  }
}

provider "aws" {
  region     = var.AWS_REGION
  access_key = var.AWS_ACCESS-KEY-ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

variable "AWS_REGION" {}

variable "AWS_ACCESS-KEY-ID" {}

variable "AWS_SECRET_ACCESS_KEY" {}


resource "aws_instance" "my-test-app" {
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    key_name = "mysecondkey"

    tags = {
        Name = "my-git-terr-test"
    }
}