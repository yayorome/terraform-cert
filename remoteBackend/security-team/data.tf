data "terraform_remote_state" "remote_eip" {
  backend = "s3"
  config = {
    bucket = "testbucketyayo"
    key = "eip.tfstate"
    region = "us-east-1"
  }
}