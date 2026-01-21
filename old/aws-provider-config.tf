provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "terraform_user" {
  name = "iamdemouser"
}

resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-00ca32bbc84273381" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.medium"

  tags = {
    Name = "MyFirstEC2Instance"
  }
  
}