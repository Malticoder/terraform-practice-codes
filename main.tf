resource "aws_instance" "my-instance" {
  ami = var.ami
  instance_type = var.instance_type
  count =2
}

resource "aws_security_group" "my-sg" {
  name = "web-sg"
   ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port = 443
    to_port =  443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}  
resource "aws_eip" "lb" {
  domain = "vpc"
}  

output "public_ip" {
  value = aws_eip.lb.public_ip
}  
resource "aws_iam_user" "lb" {
  name = var.username
}  
resource "aws_instance" "ec2-instance" {
  ami = var.ami
  instance_type = var.environment != "development" ? "t2.micro" :"m5.large"
  depends_on = [aws_s3_bucket.my-bucket]

}
resource "aws_instance" "web" {
  ami = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  key_name = "terraform-key"
  vpc_security_group_ids = ["sg-04bd9d0ab2d8e15b0"]
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("C:/Users/malti/Downloads/terraform-key.pem")
    host = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get install nginx" ,
      "sudo systemctl start nginx" ,
    ]
  }
}  

  #provisioner "local-exec" {
  #command = "echo ${self.private_ip} >> server_ip.txt"
  #}

  #}
