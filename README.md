# Terraform Infrastructure Project
This Terraform project creates a VPC with public and private subnets, an internet gateway, route tables, and EC2 instances for a bastion host and an application server. The state file is stored in an S3 bucket and DynamoDB table, and the infrastructure can be deployed to multiple regions using separate workspaces.

## Requirements
- Terraform version 1.4.5 or later. </br>
- Access keys for an AWS account with sufficient permissions to create the required resources.  </br>
- An S3 bucket and DynamoDB table for storing the Terraform state file.  </br>


## Usage
1- Clone the repository and navigate to the project directory. </br>

2- Initialize the Terraform project by running the `terraform init` command. </br>

3- Create two workspace directories named `dev` and `prod` by running the `mkdir` command. </br>

4- Create two variable definition files named `dev.tfvars` and `prod.tfvars` with environment-specific variable values. </br>

5- Apply the code and create the infrastructure in the `us-east-1` and `eu-central-1` regions by running the following commands: </br>

`terraform workspace new dev`  </br>
`terraform workspace new prod`  </br>
`terraform apply -var-file=dev.tfvars -var region=us-east-1`  </br>
`terraform apply -var-file=prod.tfvars -var region=eu-central-1` </br>

6- To destroy the infrastructure, run the `terraform destroy` command in each workspace directory. </br>

##  Variables
The following variables can be set in the `dev.tfvars` and `prod.tfvars` files:  </br>

#### Variable Description

`vpc_cidr_block` The CIDR block for the VPC. </br>
`vpc_name` The name of the VPC. </br>
`igw_name` The name of the internet gateway. </br>
`public_rt_name` The name of the public route table. </br>
`private_rt_name` The name of the private route table. </br>
`ssh_sg_name` The name of the security group that allows SSH traffic. </br>
`app_sg_name` The name of the security group that allows SSH and port 3000 traffic. </br>
`bastion_name` The name of the Bastion EC2 instance. </br>
`bastion_ami` The ID of the Amazon Machine Image (AMI) for the Bastion EC2 instance. </br>
`bastion_instance_type` The instance type for the Bastion EC2 instance. </br>
`app_name` The name of the application EC2 instance. </br>
`app_ami` The ID of the Amazon Machine Image (AMI) for the application EC2 instance. </br>
`app_instance_type` The instance type for the application EC2 instance. </br>
`key_name` The name of the key pair to use for SSH access. </br>
`public_subnet_id` The ID of the public subnet. </br>
`private_subnet_id` The ID of the private subnet. </br>
`backend_bucket_name` The name of the S3 bucket for storing the Terraform state file. </br>
`backend_region` The region of the S3 bucket and DynamoDB table. </br>
`backend_dynamodb_table_name` The name of the DynamoDB table for storing the Terraform state file. </br>

## Modules </br>
The project includes a network module that creates the VPC, internet gateway, route tables, and subnets. To use this module, add the following code to your main Terraform file: </br>
```
module "network" {
  source = "./network"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_name = var.vpc_name
  igw_name = var.igw_name
  public_rt_name = var.public_rt_name
  private_rt_name = var.private_rt_name
  ssh_sg_name = var.ssh_sg_name
  app_sg_name = var.app_sg_name
  public_subnet_cidr_block = var.public_subnet_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block
}
