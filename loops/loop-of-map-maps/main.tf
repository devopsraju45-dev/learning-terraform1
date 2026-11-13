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
  instance_type = each.value["type"]
  tags = {
    name = each.key["name"]
  }
}
variable "sample"{
  default = {
    one = {
      type = "t3.micro"
      name = "one"
    }
    two = {
      type = "t3.medium"
      name = "two"
    }
  }
}

