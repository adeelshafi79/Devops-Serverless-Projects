# modules/ec2/variables.tf

variable "vpc_id" {
  description = "VPC ID"
}

variable "subnet_id" {
  description = "Subnet ID"
}

variable "security_group_id" {
  description = "Security Group ID"
}

variable "private_key_path" {
  description = "Path to the private key file"
}

