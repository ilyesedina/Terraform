### Own Notes

## Authenticate to AWS IAM role
IAM -> Access Management -> Users
```Ubuntu(WSL)
export AWS_ACCESS_KEY_ID="<YOUR ACCESS KEY>"
export AWS_SECRET_ACCESS_KEY="<YOUR SECRET KEY>"
```
This has been separated out to a file called ```terrafom/credentials.auto.tfvars``` that is not being tracked by Git, as it is part of the gitignore.
In case there is an issue with the access credentials (AuthFailure)
Check the date and if it is out of sync update it
```Ubuntu(WSL)
date
sudo date
sudo hwclock --systohc
sudo hwclock -s # if this doesn't work restart the pc
```
## Terraform style code formatting
```Ubuntu(WSL)
cd terraform_labs/section04 
terraform fmt
```
## Validate chnages wanted to be made 
```Ubuntu(WSL)
terraform validate
```
## Create destroy resources 
```Ubuntu(WSL)
terraform plan
terraform apply
terraform destroy -auto-approve
```
## Current detailed (low level) state of our resources
```Ubuntu(WSL)
terraform show
```
## Current less-detailed (highlevel) state of the resources that is being managed
```Ubuntu(WSL)
terraform state list
```
## Helper command
```Ubuntu(WSL)
terraform -help
```
## Save a plan
It will save the plan under the name we gave. In this case under "myplan"
```Ubuntu(WSL)
terraform plan -out myplan
```
Call the plan
```Ubuntu(WSL)
terraform apply myplan 
```
Plan deletion
```Ubuntu(WSL)
terraform plan -destroy
terraform destroy
```
## Output 
in lab0402
```Ubuntu(WSL)
terraform output -json
terraform output // show the short verson
```

### Formation
`terraform fmt`
### Terraform Taint and Replace
`terraform taint  aws_instance.web_server2` flag a resource as degraded or damaged 
`terraform untaint  aws_instance.web_server2` - remove the tainted (flagged)
`terraform apply -replace="aws_instance.web_server2"`
### Debugging Error messages  
`terraform state list` - see the resources built in a list
`terraform state show aws_instance.web_server2` show more detail of a resource
### Importing existing resources 
`terraform import`
`terraform import -h` describes how to use it
Usage: terraform [global options] import [options] ADDR ID
Importing `aws_instance.aws_linux` and garbing the instance ID for aws that we created manually on the ui (manually_created_instance)
`terraform import aws_instance.aws_linux i-02a614f1b9f2c0021`
```
resource "aws_instance" "aws_linux" {
}
```
`Import successful!`
`terraform plan` - returns errors 
`terraform state list` - lists the resources in the state file and check if the "aws_instance.aws_linux" has been imported/created - in has been created
`terraform state show aws_instance.aws_linux` - to see more info and copy in the missing info to the resouce block
```
resource "aws_instance" "aws_linux" {
  ami           = "ami-0843a4d6dc2130849" 
  instance_type = "t2.micro" 
}
```
`terraform plan` - should return no errors and show the plan of the resources that will be created
Added to reference the local vars tags to validate the import of the resource
```
resource "aws_instance" "aws_linux" {
  ami           = "ami-0843a4d6dc2130849" 
  instance_type = "t2.micro" 
  tags = local.common_tags
}
```
### Terraform Workspaces
Terraform uses a state files to map your configurations.  The state, belonging to a Terraform workspace, that persistent the data. Initially, the backend has a single workspace, "default", with one associated state. Workspaces is a Terraform allows us to organize infrastructure by environments (dev, qa prod) and variables in a single directory.
`terraform workspace` 
`terraform workspace list` 
-  default - eu-west-1 Ireland
- development - eu-west-3 France (Paris)

Usually it is separated out into 
- dev - staging environment
- qa - testing
- prod 

### Terraform State CLI (Command-line interface)
`terraform show` -a way of interacting with the `terrafom.tfstate` file that is a local copy of the state file on AWS
`terraform state list`

### Debugging Terraform 
Log levels 
- TRACE 
- DEBUG 
- INFO 
- WARN 
- ERROR

Enable logging WSL
`export TF_LOG=TRACE`
Direct the logs to a file `export TF_LOG_PATH="terraform_log.txt"`
Disable logs `export TF_LOG=""`
`export TF_LOG_PATH=""` set the value to empty on the logfile 
