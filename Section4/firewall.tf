provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "demo_sg" {
    name = "terraform-firewall"
    description = "demo terra form firewall"
    tags = {
      name = "terraform-firewall"
    }
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_ip4" {
  security_group_id = aws_security_group.demo_sg.id
  ip_protocol = "tcp"
  from_port = 80
  to_port =  80
  cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "egress_all" {
  security_group_id = aws_security_group.demo_sg.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1"
}

/*resource "aws_eip" "elastic_ip" {
  instance = aws_instance.firewall.id
  domain = "vpc"
}*/

resource "aws_instance" "firewall" {
  ami = "ami-0fff1b9a61dec8a5f"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.demo_sg.id ]
  tags = {
    Name = "demo-firewall"
  }
}

