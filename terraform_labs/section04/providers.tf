# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
  #shared_credentials_file = "/Users/username/.aws/credentials"
  #profile                 = "ilyes-eu-west-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_access_key
}
