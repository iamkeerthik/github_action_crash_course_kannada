variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, stg, prod)"
  type        = string
}
