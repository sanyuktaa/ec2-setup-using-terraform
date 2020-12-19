

# ec2-setup-using-terraform
![AWS/Terraform](https://miro.medium.com/max/750/1*1lD3ZGXjVu2aI0yVXDszlA.jpeg)
## Setting up t3a.micro RHEL instance using Terraform
### File structure : 
         "main.tf"._
                  |                            |-- /network
                  |		               |   "main.tf"
                  |   /settings		  |   "output.tf"
                  |   "main.tf"		  |
                  |-- "aws.tf"      ------------
                  |   "output.tf"              |
                  |                            |-- /security
                  |                            |   "main.tf"
                  |                            |   "output.tf"
                  |
                  |                            |-- /server
                  |                            |   "main.tf"
                  |   /resource_setup          |   "variables.tf"
                  |   "main.tf"                |
                  |-- "aws.tf"       ----------
                  |   "variables.tf"
### settings :
**1. network module:** to setup 
     vpc, 
     private subnet,
     route table 
###
**2. security module:** to setup 
     security groups

### resource_setup :
**1. server module:** to setup 
     ec2 instance

**Pre-requisites :**

 - "Terraform v0.13.5" 
 - "aws-cli/1.18.199 Python/3.9.0 Darwin/15.6.0 botocore/1.19.39"
