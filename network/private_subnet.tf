# cerate private subnets

resource "aws_subnet" "private-subnet-1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_1_cider
  availability_zone = var.az_1

  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_2_cider
  availability_zone = var.az_2

  tags = {
    Name = "private-subnet-2"
  }
}

