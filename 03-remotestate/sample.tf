terraform {
  backend "s3" {
    bucket = "terrafornew"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}