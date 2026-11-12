resource "aws_instance" "example2" {
  ami           = "ami-005d1c2f7f99cdb06"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.sgid]
}
variable "sgid" {}