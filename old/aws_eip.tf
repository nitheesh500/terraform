provider "aws" {
  region = "us-east-1"  
  
}

resource "aws_eip" "myeip" {
  domain = "vpc"
  tags = {
    Name = "my_eip"
  }
  
}