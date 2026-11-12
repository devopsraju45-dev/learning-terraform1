terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.36.0"
    }
  }
}
resource "aws_instance" "web" {
  for_each = var.sample
  ami           = "ami-005d1c2f7f99cdb06"
  instance_type = "t3.micro"
  tags = {
    Name = each.key
  }
}
variable "sample" {
  default = ["one","two"]
}

