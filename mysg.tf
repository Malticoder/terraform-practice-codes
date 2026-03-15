# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-05cffbcae28945f11"
resource "aws_security_group" "mysg" {
  description            = "Managed by Terraform"
  egress                 = []
  ingress                = []
  name                   = "terraform-firewalls"
  region                 = "us-east-1"
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-0e6293a7846120ced"
}
