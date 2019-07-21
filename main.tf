terraform {
  required_version = "0.12.4"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test-server" {
  ami           = "ami-40d28157"
  instance_type = "t2.micro"


  tags ={
      Name = "terraform-example"
  }
}