variable "local_region" {
  default = "us-east-1"
}

module "ec_team_b" {
  source = "../../modules/ec2"
  instance_type = "t2.micro"
  ami = "ami-0fff1b9a61dec8a5f"
  region = var.local_region
}

module "s3_bucket_team_b" {
  source = "../../modules/bucket"
  region = var.local_region
  env = "dev"
  bucket_name = "one_bucket"
}