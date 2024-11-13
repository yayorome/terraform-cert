
provider "aws" {
  region = var.region
}

resource "aws_instance" "firstec2" {
  ami = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "firstec2"
    Env = "dev"
  }
}
