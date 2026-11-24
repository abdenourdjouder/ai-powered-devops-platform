output "project_name" {
  description = "Project name"
  value       = var.project_name
}

output "environment" {
  description = "Deployment environment"
  value       = var.environment
}

output "aws_region" {
  description = "AWS region"
  value       = var.aws_region
}

output "vpc_id" {
  description = "ID of the development VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "CIDR block of the development VPC"
  value       = module.vpc.vpc_cidr
}

output "public_subnet_ids" {
  description = "Public subnet IDs by Availability Zone"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs by Availability Zone"
  value       = module.vpc.private_subnet_ids
}

output "admin_security_group_id" {
  description = "Administrative Security Group ID"
  value       = module.vpc.admin_security_group_id
}