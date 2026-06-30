output "security_group_id" {
  description = "ID of the web security group"
  value       = aws_security_group.web_sg.id
}

output "security_group_vpc_id" {
  description = "VPC ID of the web security group"
  value       = aws_security_group.web_sg.vpc_id
}
