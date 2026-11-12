resource "aws_instance" "example2" {
  count = 2
  ami           = "ami-005d1c2f7f99cdb06"
  instance_type = "t3.micro"
}

provider "aws" {
  region = "us-east-1"
}