//Dont hardcode region on module
provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "s3bucket" {
  bucket = var.bucket_name
  tags = {
    Name = var.bucket_name
    Env = var.env
  }
}