terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~>3.5.0"
      }
    }
}

provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "ec2_instance" {
    ami = "ami-073bb7464cc51df7c"
    instance_type = "t2.micro"
}