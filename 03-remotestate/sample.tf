terraform {
  backend "s3" {
    bucket = "terrafornew"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
resource "aws_instance" "example" {
  ami           = "ami-005d1c2f7f99cdb06"
  instance_type = "t3.micro"
}