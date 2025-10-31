terraform {
  backend "s3" {
    bucket = "github-demo-state-bucket321"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}