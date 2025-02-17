variable "aws_region" {
  type        = string
  description = "AWS region to deploy into"
  default     = "ap-northeast-1"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
  default     = "ami-02e5504ea463e3f34" # 最新の AMI ID に置き換えてください
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
  default     = "vpc-xxxxxxxxxxxx"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
  default     = "subnet-xxxxxxxxxxxx"
}

variable "security_group_id" {
  type        = string
  description = "Security Group ID"
  default     = "sg-xxxxxxxxxxxx"
}
