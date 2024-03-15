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

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
  }
}
