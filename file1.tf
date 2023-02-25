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
  profile = "default"
}

resource "aws_instance" "example" {
  ami           = "ami-0e742cca61fb65051"
  instance_type = "t2.micro"
}
