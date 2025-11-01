terraform {
  backend "s3" {
    bucket = "github-demo-state-bucket3213"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}