provider "aws" {
  region  = "us-east-1"
  profile = "production"
}

terraform {
  backend "s3" {
    bucket = "mystate-2023"
    key    = "myec2state"
    region = "us-east-1"
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