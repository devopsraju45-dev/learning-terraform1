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
  ami = "ami-005d1c2f7f99cdb06"
  instance_type = "each.value"
  tags = {
    name = each.key
  }
  }
variable "sample"{
   default = {
     one = "t3.micro"
     two = "t3.medium"
   }
  }

