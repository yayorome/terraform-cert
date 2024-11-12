resource "aws_iam_user" "user" {
  name = var.iam_user
  path = "/system/"
}