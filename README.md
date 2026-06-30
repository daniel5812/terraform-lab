# Terraform AWS Lab

This project creates a basic AWS infrastructure using Terraform.

## What it creates

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance
- SSH Key Pair
- Apache Web Server

## Architecture

User
→ Internet
→ Public EC2
→ Apache Web Server

## Commands

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform output
Test Web Server
curl $(terraform output -raw web_server_url)
Connect with SSH
$(terraform output -raw ssh_command)
Destroy Resources
terraform destroy
Notes
The EC2 instance runs Amazon Linux 2023.
Apache is installed using user_data.
SSH is allowed only from a specific CIDR.
HTTP is open to the configured CIDR.
Resources are tagged with common tags.