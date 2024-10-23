provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "oneec2" {
  ami = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.ec_name
  }
}