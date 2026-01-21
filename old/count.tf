provider "aws" {
  region = "us-east-1"      
  
}

resource "aws_instance" "myec2" {

    ami           = "ami-00ca32bbc84273381" # Amazon Linux 2 AMI (HVM), SSD Volume Type
    instance_type= "t2.micro" # Accessing the map variable using a key
    count = 3
    tags = {
        Name = "myec2-${var.myec2names[count.index]}"
}
}

variable "myec2names" {
    type=list(string)
    default = ["web1","web2","web3" ,"web4"]
  
}