# Terraform State File location 
terraform {
  backend "local" {
    path = "mystate/terraform.tfstate"
  }
}
