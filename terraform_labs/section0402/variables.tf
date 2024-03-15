variable "aws_secret_access_key" {
  type = string
}

variable "aws_access_key" {
  type = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
