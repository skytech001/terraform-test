terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.19.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "my-test-app" {
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    key_name = "mysecondkey"

    tags = {
        Name = "my-ec2"
    }
}