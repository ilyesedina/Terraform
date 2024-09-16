# Configure the AWS Provider
provider "aws" {
  region     = "eu-west-1"        #back to 1
  access_key = var.aws_access_key # this variable is declered in the credentials.auto.tfvars file that is not being pushed to the repository (as it is a sensitive value and should not be shared with others)
  secret_key = var.aws_secret_access_key

  default_tags {
    tags = {
      Environment = terraform.workspace
      Owner       = "IlyesQSC"
      Provisoned  = "Terraform"
    }
  }
}
