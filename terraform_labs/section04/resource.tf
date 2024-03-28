# From Lecture 13 - Resource Blocks explanianon and lab
/* # New resource to deploy an Amazon S3 bucket
resource "aws_s3_bucket" "my-new-S3-bucket" {
  #The first resource block is the type of S3 bucket that we want to deploy to AWS. This is the name that shows up in the AWS console.
  #The name of the bucket set inside terraform is "my-new-S3-bucket". This is the name that we will use to reference the bucket inside the terraform configuration.
  bucket = "my-new-tf-test-bucket-${random_id.randomness.hex}" #set the parameter for name. The bucket has to be globally unique. This is the name inside AWS

  tags = {
    Name    = "My S3 Bucket" #metadata for the bucket
    Purpose = "Intro to Resource Blocks Lab"
  }
}

resource "aws_s3_bucket_ownership_controls" "my_new_bucket_acl" {
  bucket = aws_s3_bucket.my-new-S3-bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

# Configure an AWS security group
resource "aws_security_group" "my-new-security-group" {
  name        = "web_server_inbound"
  description = "Allow inbound traffic on tcp/443"
  vpc_id      = aws_vpc.vpc.id # Referencing the VPC that we created earlier

  ingress {
    description = "Allow 443 from the Internet"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow traffic from anywhere, by anyone
  }

  tags = {
    Name    = "web_server_inbound"
    Purpose = "Intro to Resource Blocks Lab"
  }
}

# Configure a resource from the random provider
resource "random_id" "randomness" {
  byte_length = 16
}
 */
