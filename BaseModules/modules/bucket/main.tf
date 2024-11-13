provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "s3bucket" {
  bucket = "one_bucket"
  tags = {
    Name = "One Bucket"
    Env = "dev"
  }
}