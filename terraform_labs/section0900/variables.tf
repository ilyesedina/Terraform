variable "aws_region" {
  type    = string
  default = "eu-west-1"
}

variable "aws_secret_access_key" {
  description = "AWS secret key"
  type        = string
}

variable "aws_access_key" {
  description = "AWS access key"
  type        = string
}

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
  }
}

variable "variables_sub_cidr" {
  description = "CIDR Block for the Variables Subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "variables_sub_az" {
  description = "Availability Zone used Variables Subnet"
  type        = string
  default     = "eu-west-1a"
}

variable "variables_sub_auto_ip" {
  description = "Set Automatic IP Assigment for Variables Subnet"
  type        = string
  default     = "true"
}

variable "environment" {
  description = "Environment for deployment"
  type        = string
  default     = "dev"
}
