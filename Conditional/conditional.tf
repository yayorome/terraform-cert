provider "aws" {
  region = "us-east-1"
}

variable "env" {
  default = "dev"
}

variable "region" {
  default = "us-east-1"
}

variable "today" {
  default = "24"
}

resource "aws_instance" "condec2" {
  ami = "ami-0fff1b9a61dec8a5f"
  instance_type = var.env == "dev" && (var.region == "us-east-1"  || var.today == "24" )? "t2.micro" : "t3.micro"
}