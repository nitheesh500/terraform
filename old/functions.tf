provider "aws" {
  region = "us-east-1"      
  
}

resource "aws_iam_user" "demouser" {

    name="demouser"
  
}

resource "aws_iam_user_policy" "myuserpolicy" {
    name="myuserpolicy"
    user=aws_iam_user.demouser.name
    policy= file("./iam-policy-func.json")
  
}