variable "name_prefix" {
  description = "Prefix used to name AWS resources"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block of the VPC"
  type        = string
  default     = "10.20.0.0/16"

  validation {
    condition     = can(cidrnetmask(var.vpc_cidr))
    error_message = "The VPC CIDR must be a valid IPv4 CIDR block."
  }
}

variable "availability_zones" {
  description = "Availability Zones used by the VPC"
  type        = list(string)

  validation {
    condition     = length(var.availability_zones) == 2
    error_message = "Exactly two Availability Zones must be provided."
  }
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.20.1.0/24", "10.20.2.0/24"]

  validation {
    condition = (
      length(var.public_subnet_cidrs) == 2 &&
      alltrue([for cidr in var.public_subnet_cidrs : can(cidrnetmask(cidr))])
    )
    error_message = "Provide exactly two valid IPv4 public subnet CIDRs."
  }
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.20.11.0/24", "10.20.12.0/24"]

  validation {
    condition = (
      length(var.private_subnet_cidrs) == 2 &&
      alltrue([for cidr in var.private_subnet_cidrs : can(cidrnetmask(cidr))])
    )
    error_message = "Provide exactly two valid IPv4 private subnet CIDRs."
  }
}

variable "admin_cidr" {
  description = "Administrator public IPv4 CIDR allowed to access SSH"
  type        = string

  validation {
    condition = (
      can(cidrnetmask(var.admin_cidr)) &&
      try(tonumber(split("/", var.admin_cidr)[1]) >= 1, false)
    )
    error_message = "Provide a valid IPv4 CIDR with a prefix between /1 and /32. Do not use 0.0.0.0/0."
  }
}
