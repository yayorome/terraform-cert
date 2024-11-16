terraform {
  backend "s3" {
    bucket = "testbucketyayo"
    key = "eip.tfstate"
    region = "us-east-1"
  }
}
