variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "state_bucket_name" {
  description = "S3 bucket name for Terraform remote state"
  type        = string
}

variable "lock_table_name" {
  description = "DynamoDB table name for Terraform state locking"
  type        = string
  default     = "terraform-locks"
}

variable "common_tags" {
  description = "Common tags"
  type        = map(string)

  default = {
    Project     = "terraform-aws-lab"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
