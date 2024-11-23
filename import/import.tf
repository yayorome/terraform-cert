provider "aws" {
  region = "us-east-1"
}

import {
  to = aws_security_group.mysgimport
  id = "sg-0efc409fd46e92e02"
}

