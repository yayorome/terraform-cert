# variable "token" {
#   default = "TOKEN"
# }

# terraform {
#   required_providers {
#     digitalocean = {
#       source  = "digitalocean/digitalocean"
#       version = "2.43.0"
#     }
#   }
# }

# provider "digitalocean" {
#   token = var.token
# }

# data "digitalocean_projects" "projects" {
#   filter {
#     key    = "is_default"
#     values = ["true"]
#   }
# }

# output "do" {
#   value = data.digitalocean_projects.projects.projects
# }

# /*
# data "local_file" "foo" {
#     filename = "${path.module}/test.txt"
# }

# output "filecontents" {
#   value = data.local_file.foo.content
# }*/

provider "aws" {
  region = "us-west-1"
}

data "aws_ami" "os_ami" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-arm64-server-*" ]
  }
}

resource "aws_instance" "ec2" {
  ami = data.aws_ami.os_ami.id
  instance_type = "t2.micro"
}

// east ami-07ee04759daf109de
// west ami-076ce4c214a7e0764