provider "aws" {
  region  = var.AWS_REGION
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}
variable "AWS_REGION" {
}


terraform {
  cloud {
    organization = "visual-greatness-class"

    workspaces {
      name = "awsec2-deploy"
    }
  }
}


resource "aws_instance" "test-1" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  tags = {
    "Name" = "mysecondec2"
  }
}

resource "aws_instance" "test-2" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  tags = {
    "Name" = "importec2"
  }
}

resource "aws_instance" "test-3" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  tags = {
    "Name" = "mythirdec2"
  }
}