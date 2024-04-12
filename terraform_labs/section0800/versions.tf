terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    # find version: https://registry.terraform.io/providers/hashicorp/http/latest
    http = {
      source  = "hashicorp/http"
      version = "~> 2.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.84.0"
    }
  }
}

terraform {
/*  # Local backend
  backend "local" {
    path = "mystate/terraform.tfstate"
  }  */
 backend "s3" {
 
  }  

  # HTTP backend 
  /* backend "http" {
    address        = "http://localhost:5000/terraform_state/my_state"
    lock_address   = "http://localhost:5000/terraform_lock/my_state"
    lock_method    = "PUT"
    unlock_address = "http://localhost:5000/terraform_lock/my_state"
    unlock_method  = "DELETE"
  } */

  /* # Terraform Cloud backend
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "lego-demo"

    workspaces {
      name = "my-aws-app"
    }
  } */
}
