provider "aws" {
  region = "us-east-1"      
  
}

variable "environment" {
    type = string
    default = "dev"
}
variable "region" {
    type = string
    default = "us-east-1"
}

resource "aws_instance" "myec2" {
  
  ami = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = var.environment== "prod" && var.region == "us-east-1" ? "m5.large" : "t2.micro"
}