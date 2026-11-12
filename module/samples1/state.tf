terraform {
  backend "s3" {
    bucket = "terrafornew"
    key    = "modules/sample1/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}