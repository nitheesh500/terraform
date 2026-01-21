provider "aws" {
  region = "us-east-1"      
  
}

resource "aws_instance" "myec2" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = var.mylist[0] # Accessing the map variable using a key

 
}

variable "mylist" {
  type = list(string)
  default = ["m5.large"]
}

variable "mymap" {
    type= map(string)
    default = {
      "us-east-1" = "t2.micro",
      "us-west-2" = "t3.micro",
        "eu-west-1" = "t3a.micro"
    }
  
}

output "instance_value" {
    value= aws_instance.myec2.instance_type
}