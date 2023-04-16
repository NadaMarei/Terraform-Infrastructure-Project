variable "VPC_CIDR" {
  type    = string
  default = "10.0.0.0/16"
}

variable "VPC_NAME" {
  type = string
}

variable "IGW_NAME" {
  type = string
}

variable "PUBLIC_SUBNET_1_CIDR" {
  type = string
  default = "10.0.1.0/24"
}

variable "PUBLIC_SUBNET_2_CIDR" {
  type = string
  default = "10.0.2.0/24"
}

variable "PRIVATE_SUBNET_1_CIDR" {
  type = string
  default = "10.0.3.0/24"
}

variable "PRIVATE_SUBNET_2_CIDR" {
  type = string
  default = "10.0.4.0/24"
}

variable "AZ_1" {
  type = string
}

variable "AZ_2" {
  type = string
}

variable "REGION" {
  type = string
}

variable "AMI_ID" {
  type = string
}

variable "INSTANCE_TYPE" {
  type = string
}
