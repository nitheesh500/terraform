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
output "iam_arns" {
    value= aws_iam_user.users[*].arn
  
}

output "combined-output" {

    value=zipmap( aws_iam_user.users[*].name, aws_iam_user.users[*].arn)
  
}