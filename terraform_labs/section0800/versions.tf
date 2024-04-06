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

# Terraform State File location configuration
terraform {
  backend "s3" {
    bucket = "my-terraform-state-demo-ilyes"
    // S3 bucket created manually through the AWS Console and referenced here
    key    = "dev/aws_infra"
    region = "eu-west-1"

    # DynamoDB table for locking the state file
    dynamodb_table = "terraform-locks-demo"
    encrypt        = true
  }
}
