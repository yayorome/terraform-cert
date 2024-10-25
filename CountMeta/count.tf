provider "aws" {
  region = "us-east-1"
}

variable "ec_names" {
  type = list(string)
  default = [ "first","second","third" ]
}

resource "aws_instance" "firstec2" {
  ami = "ami-0fff1b9a61dec8a5f"
  instance_type = "t2.micro"
  count = 3

  tags = {
    name = var.ec_names[count.index]
  }
}
