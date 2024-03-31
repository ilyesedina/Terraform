resource "random_pet" "server" {
  length = 2
}

resource "aws_s3_bucket" "this" {
  bucket = "qsc-tf-demo-bucket"
  acl    = "private"
}