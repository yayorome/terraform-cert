provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "this" {
  name = "demo-func-user"
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "demo-func-policy"
  user = aws_iam_user.this.name

  policy = file("./policy.json")
}