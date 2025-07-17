variable "aws_region" {
  description = "AWS region to deploy the resources"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "aws-ec2-key"
}

variable "public_key_path" {
  description = "Path to the SSH public key file"
  type        = string
  default     = "~/.ssh/aws-ec2-key.pub"
}

variable "instance_name" {
  description = "Tag name for EC2 instance"
  type        = string
  default     = "DevOps-CICD-Instance"
}
