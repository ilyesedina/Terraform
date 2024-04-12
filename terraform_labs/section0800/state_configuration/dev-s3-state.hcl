bucket = "my-terraform-state-demo-ilyes"
// S3 bucket created manually through the AWS Console and referenced here
key    = "dev/aws_infra"
region = "eu-west-1"

# DynamoDB table for locking the state file
dynamodb_table = "terraform-locks-demo"
encrypt        = true