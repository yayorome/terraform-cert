
terraform {
    required_version = "1.5.7"
    required_providers {
      aws = {
        version = "5.57.0"
      }
    }
}

resource "aws_security_group" "sg_01" {
  name = "app_firewall"
}