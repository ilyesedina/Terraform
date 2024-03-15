# Creating Modules 
module "subnet_addrs" {
  source  = "hashicorp/subnets/cidr"
  version = "1.0.0"

  base_cidr_block = "10.0.0.0/22"
  networks = [
    {
      name     = "module_network_a"
      new_bits = 2
    },
    {
      name     = "module_network_b"
      new_bits = 2
    },
  ]
}

#Declared resource
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr #for this you have to declare the 'vpc_cidr' variable in the variables.tf file  
  // cidr_block = "10.0.0.0/16" (This is the static way to declare the cidr block)
}
