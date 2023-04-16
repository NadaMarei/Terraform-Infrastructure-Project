# create VPC

resource "aws_vpc" "my_vpc" {
  cidr_block = var.VPC_CIDR
  enable_dns_hostnames = true

  tags = {
    Name = var.VPC_NAME
  }
}
