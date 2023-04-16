# cerate private subnets

resource "aws_subnet" "private-subnet-1" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.PRIVATE_SUBNET_1_CIDR
  availability_zone = var.AZ_1

  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.PRIVATE_SUBNET_2_CIDR
  availability_zone = var.AZ_2

   tags = {
    Name = "private-subnet-2"
  }
}

