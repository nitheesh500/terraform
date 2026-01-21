provider "aws" {
  region = "us-east-1"      
  
}

resource "aws_instance" "myec2" {
  ami           = var.ami_id # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = var.machine_type

  tags = {
    Name ="myec2instance"
  
}
}