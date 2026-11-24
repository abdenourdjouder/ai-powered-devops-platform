variable "project_name" {
  description = "Name of the platform project"
  type        = string
  default     = "ai-powered-devops-platform"
}

variable "environment" {
  description = "Deployment environment"
  type        = string

  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "Environment must be dev or prod."
  }
}

variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "us-east-1"
}
