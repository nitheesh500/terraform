provider "aws" {
  region = "us-east-1"
  
}


variable "user_names" {
    type=set(string)
    default = [ "user1", "user2", "user3" ]
  
}
resource "aws_iam_user" "users" {

    for_each=var.user_names
    name=each.value
  
}