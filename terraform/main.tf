# Random suffix to ensure bucket uniqueness
resource "random_id" "suffix" {
  byte_length = 3
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket        = "${var.project_name}-${terraform.workspace}-${random_id.suffix.hex}"
  force_destroy = true

  tags = {
    Environment = terraform.workspace
  }
}
resource "aws_instance" "demo_server" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (free-tier eligible)
  instance_type = "t2.micro"
}