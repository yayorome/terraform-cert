provider "aws" {
  region = "us-east-1"
}

provider "aws" {
    alias = "mumbai"
  region = "ap-south-1"
}

provider "aws" {
    alias = "us2"
  region = "us-west-1"
}

resource "aws_security_group" "mysg1" {
    name = "sg_mumbai"
    provider = aws.mumbai
}

resource "aws_security_group" "mysg2" {
    name = "sg_usa2"
    provider = aws.us2
}