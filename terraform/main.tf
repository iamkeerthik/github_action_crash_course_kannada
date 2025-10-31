resource "random_id" "suffix" {
  byte_length = 3
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket        = "${var.project_name}-${var.environment}-${random_id.suffix.hex}"
  force_destroy = true

  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}