
provider "aws" {
  region = "us-east-1"
  
}
resource "aws_security_group" "demosg" {
    name = "demosg"
    description = "demo security group"
    tags = {
        Name = "demosg"
    }
}

resource "aws_vpc_security_group_ingress_rule" "myingress" {
  security_group_id=aws_security_group.demosg.id
  cidr_ipv4= var.vpc_ip
  from_port=22
  to_port = var.to_port
  ip_protocol="tcp"
}


resource "aws_vpc_security_group_egress_rule" "myegress" {
  security_group_id= aws_security_group.demosg.id
  cidr_ipv4=var.vpc_ip
  from_port=20
  to_port=var.to_port
  ip_protocol="tcp"
  
}

output "name" {
  value=aws_security_group.demosg.name
}