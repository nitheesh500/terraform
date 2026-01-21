provider "aws" {
  region = "us-east-1"
  
}

resource "aws_security_group" "custom_sg" {
    name = "custom_sg_allowtls"
    description = "Security group to allow inbound TLS traffic"
    tags = {
      Name = "custom_sg_allow_tls"
    }
}

resource "aws_vpc_security_group_ingress_rule" "allow_https" {
    security_group_id = aws_security_group.custom_sg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port=80
    to_port=95
    ip_protocol="tcp"
    tags = {
      Name= "allow_https"
    }
}

resource "aws_vpc_security_group_egress_rule" "allow25ports" {
  security_group_id= aws_security_group.custom_sg.id
  cidr_ipv4="0.0.0.0/0"
  
  ip_protocol = "-1"
}