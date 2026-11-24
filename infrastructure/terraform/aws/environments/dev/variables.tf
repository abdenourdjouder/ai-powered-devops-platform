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

variable "availability_zones" {
  description = "AWS Availability Zones used by the VPC"
  type        = list(string)

  validation {
    condition = (
      length(var.availability_zones) == 2 &&
      length(distinct(var.availability_zones)) == 2
    )
    error_message = "Provide exactly two distinct Availability Zones."
  }
}

variable "admin_cidr" {
  description = "Public IPv4 CIDR allowed to access SSH"
  type        = string

  validation {
    condition = (
      can(cidrnetmask(var.admin_cidr)) &&
      try(tonumber(split("/", var.admin_cidr)[1]) >= 1, false)
    )
    error_message = "Provide a valid IPv4 CIDR between /1 and /32. Do not use 0.0.0.0/0."
  }
}
