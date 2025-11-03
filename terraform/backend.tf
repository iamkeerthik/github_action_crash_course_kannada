terraform {
  backend "s3" {
    bucket = "my-s3-backend9879"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}