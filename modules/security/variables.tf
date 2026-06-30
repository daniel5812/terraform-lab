variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
}

variable "allowed_http_cidr" {
  description = "CIDR block allowed to access HTTP"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to access SSH"
  type        = string
}

variable "common_tags" {
  description = "Common tags for security resources"
  type        = map(string)
}
