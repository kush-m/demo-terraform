terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "demo" {
  ami 			=  var.ami_id
  instance_type = "t2.micro"
  key_name      = "eks-kush-kp"
  tags = {
    Name = "kush-test"
  }
}


