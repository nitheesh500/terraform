provider "aws" {
  region = "us-east-1"      
  
}

resource "aws_security_group" "sg1" {
    name="sg1"
    description="security group 1"
    tags = local.mycuston_tags

  
}

resource "aws_security_group" "sg2" {
    name="sg2"
    description="security group 2"  
    tags = local.mycuston_tags
  
}


locals {
  mycuston_tags={
    name="security team"
    CreationDate= "Date:${formatdate("DD MMM YYYY hh:mm ZZZ",timestamp())}"
  }
}