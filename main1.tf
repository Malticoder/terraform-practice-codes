terraform {
  backend "s3" {
    bucket = "kplabs-terraform-backends-01"
    key    = "production.tfstate"
    region = "us-east-1"
  }
}

resource "aws_iam_user" "dev" {
  name = "kplabs-user-01"
}

resource "aws_security_group" "prod" {
  name        = "terraform-firewalls"
}
  
