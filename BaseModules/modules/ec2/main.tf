provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "firstec2" {
  ami = "ami-0fff1b9a61dec8a5f"
  instance_type = "t2.micro"

  tags = {
    Name = "firstec2"
    Env = "dev"
  }
}
