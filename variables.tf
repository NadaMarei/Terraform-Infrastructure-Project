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
}

variable "PUBLIC_SUBNET_2_CIDR" {
  type = string
}

variable "PRIVATE_SUBNET_1_CIDR" {
  type = string
}

variable "PRIVATE_SUBNET_2_CIDR" {
  type = string
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
variable "EC2_COUNT" {
  type = number
  description = ""
}

variable "DB_NAME" {
    type = string
    description = ""
}
variable "DB_ENGINE" {
    type = string
    description = ""
}
variable "DB_INSTANCE_CLASS" {
    type = string
    description = ""
}
variable "DB_ENGINE_VERSION" {
    type = string
    description = ""
}

variable "SECRET_ARN" {
    type = string
    description = ""
}

variable "CHACHE_NODE_TYPE" {
    type = string
    description = ""
}

variable "CHACHE_NODE_NUM" {
    type = number
    description = ""
}

variable "CHACHE_ENGINE_VERSION" {
    type = string
    description = ""
}
