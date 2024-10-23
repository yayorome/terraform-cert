provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "lb" {
  domain = "vpc"
}

output "public-ip" {
  value = aws_eip.lb.public_ip
}

output "public-url" {
  value = "http://${aws_eip.lb.public_ip}:8080"
}

output "eip-object" {
  value = aws_eip.lb
}