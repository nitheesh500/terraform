provider "aws" {
  region = "us-east-1"
  
}

resource "aws_iam_user" "users" {
    count  =3
    name="user-${count.index}"

}

output "iam_user_names" {
    value = aws_iam_user.users[*].name
  
}