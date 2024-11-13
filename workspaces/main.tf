
locals {
  instance_type = {
    default = "t2.nano"
    dev = "t2.micro"
    prod = "m5.large"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "firstec2" {
  ami = "ami-0fff1b9a61dec8a5f"
  instance_type = local.instance_type[terraform.workspace]

  tags = {
    Name = "firstec2"
  }
}
