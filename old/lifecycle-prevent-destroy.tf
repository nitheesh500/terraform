provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "myec2" {
  ami           = "ami-0360c520857e3138f"
  instance_type = "t2.micro"

#   lifecycle {
#     prevent_destroy = true
#   }

  tags = {
    "name"="lifecycle-example"
    "environment"="dev"
  }
  
}