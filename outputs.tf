output "security_group_id" {
  description = "ID of the web security group"
  value       = module.security.security_group_id
}

output "security_group_vpc_id" {
  description = "VPC ID where the security group was created"
  value       = module.security.security_group_vpc_id
}

output "web_server_public_ip" {
  description = "Public IP address of the EC2 web server"
  value       = module.compute.public_ip
}

output "web_server_url" {
  description = "HTTP URL of the EC2 web server"
  value       = module.compute.web_url
}

output "ssh_command" {
  description = "SSH command to connect to the EC2 instance"
  value       = module.compute.ssh_command
}
