variable "aws_region" {
  type    = string
  default = "eu-west-1"
}
variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "demo_private_subnets" {
  default = {
    "demo_private_subnet_1" = 1
    "demo_private_subnet_2" = 2
  }
}
variable "demo_public_subnets" {
  default = {
    "demo_public_subnet_1" = 1
    "demo_public_subnet_2" = 2
  }
}