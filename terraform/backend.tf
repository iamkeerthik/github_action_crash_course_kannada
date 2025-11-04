terraform {
  backend "s3" {
    bucket = "my-bucket-1234-state"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}