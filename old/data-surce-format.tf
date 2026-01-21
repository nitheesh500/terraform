provider "aws" {
  region = "us-east-1"
  
}
data "aws_instance" "example" {
  filter {
   name= "tag:Team"
   values = ["prod"]
  }
  
}

data "aws_instance" "example1" {
  instance_tags = {
    "Team" = "prod"
  }
  
}