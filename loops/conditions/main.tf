terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.36.0"
    }
  }
}
resource "aws_instance" "web" {
  ami =
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type

}
variable "instance_typr" {
        default = null
}
