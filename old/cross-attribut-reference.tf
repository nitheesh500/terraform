provider "aws" {
  region = "us-east-1"      
  
}

resource "aws_eip" "myeip" {
  domain = "vpc"
  tags = {
    Name = "my_eip"
  }
  
}

resource "aws_security_group" "mycustom_sg" {
  name = "mycustom_sg"
  tags = {
    Name = "mycustom_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allowport80forcustomeip" {
  
  security_group_id= aws_security_group.mycustom_sg.id
  cidr_ipv4= "${aws_eip.myeip.public_ip}/32"
  from_port=80
  to_port=80
  ip_protocol="tcp"
}