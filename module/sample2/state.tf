terraform {
  backend "s3" {
    bucket = "terrafornew"
    key    = "modules/sample2/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}