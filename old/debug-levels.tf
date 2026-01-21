# crate a env varaible TF_LOG 
# Log levels can be set to TRACE, DEBUG, INFO, WARN, or ERROR.
# Example:  TF_LOG=DEBUG


# use TF_LOG_PATH to specify a file to write logs to
# Example:  TF_LOG_PATH=./terraform.log
provider "local" {

}
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.medium"

}
resource "local_file" "myfile" {
  content  = "This is a sample file created using Terraform."
  filename = "${path.module}/samplefile.txt"

}