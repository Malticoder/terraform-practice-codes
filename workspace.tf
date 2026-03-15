resource "aws_instance" "myec2" {
   ami = "ami-0b6c6ebed2801a5cb"
   instance_type = "t2.micro"
}

locals {
  instance_type = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "m5.large"
  }
}

resource "aws_instance" "myec2" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = local.instance_type[terraform.workspace]
}
