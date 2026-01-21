provider "aws" {
  region = "us-east-1"          
  
}

data "aws_account_primary_contact" "contact" {
  
}

