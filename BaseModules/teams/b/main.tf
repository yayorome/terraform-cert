module "ec_team_b" {
  source = "../../modules/ec2"
}

module "s3_bucket_team_b" {
  source = "../../modules/bucket"
}