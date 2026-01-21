#use -target flag to target specific resources
#terraform apply  -target=local_file.demofile

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

resource "local_file" "demofile" {
  content  = "This is a sample file created using Terraform."
  filename = "${path.module}/samplefile.txt"
  
}