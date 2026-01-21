provider "aws" {
  region = "us-east-1"          
  
}

data "aws_ami" "latestUbuntuAmi" {
    most_recent = true
    owners      = ["amazon"]
   filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
   }
}

resource "aws_instance" "myec2" {
  ami           = data.aws_ami.latestUbuntuAmi.id
  instance_type = "t2.micro"
  
}