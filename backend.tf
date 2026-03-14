terraform {
  backend "s3" {
    bucket = "terraform-bash-bucker-1"
    key    = "statefile/dev/terraform.tfstate"
    region = "us-east-1"
  }
}

