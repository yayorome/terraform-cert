module "ec2_team_a" {
  source = "../../modules/ec2"
  instance_type = "t2.micro"
  ami = "ami-0fff1b9a61dec8a5f"
  region = "us-east-1"
}

resource "aws_eip" "eip" {
  domain = "vpc"
  instance = module.ec2_team_a.instance_id
}