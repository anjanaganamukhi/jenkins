terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  shared_credentials_file = "/home/ec2-user/.aws/credentials"
}

resource "aws_instance" "example" {
  ami           = "ami-0e742cca61fb65051"
  instance_type = "t2.micro"
}
