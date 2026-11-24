output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.this.id
}

output "vpc_cidr" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.this.cidr_block
}

output "public_subnet_ids" {
  description = "Map of public subnet IDs by Availability Zone"
  value       = { for az, subnet in aws_subnet.public : az => subnet.id }
}

output "private_subnet_ids" {
  description = "Map of private subnet IDs by Availability Zone"
  value       = { for az, subnet in aws_subnet.private : az => subnet.id }
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.this.id
}

output "admin_security_group_id" {
  description = "ID of the administrative Security Group"
  value       = aws_security_group.admin.id
}
