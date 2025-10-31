
resource "aws_s3_bucket" "demo_bucket" {
  bucket        = "${var.project_name}-${var.environment}-${var.bucket_name}"
  force_destroy = true

  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}