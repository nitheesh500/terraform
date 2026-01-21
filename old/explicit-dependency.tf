provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "myec2" {
  ami           = "ami-0360c520857e3138f"
  instance_type = "t2.micro"
  depends_on = [ aws_security_group.mysg ] # Explicit dependency on security group resource
}

resource "aws_security_group" "mysg" {
    name="my-security-group"
    description = "Security group for my EC2 instance"
}