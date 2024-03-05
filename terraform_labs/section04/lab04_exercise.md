### Own Notes

## Authenticate to AWS IAM role
IAM -> Access Management -> Users
```Ubuntu(WSL)
export AWS_ACCESS_KEY_ID="<YOUR ACCESS KEY>"
export AWS_SECRET_ACCESS_KEY="<YOUR SECRET KEY>"
```
In case there is an issue with the access credentials (AuthFailure)
Check the date and if it is out of sync update it
```Ubuntu(WSL)
date
sudo date
sudo hwclock --systohc
sudo hwclock -s 
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