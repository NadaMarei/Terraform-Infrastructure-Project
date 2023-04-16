# create a public subnets

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.public_subnet_1_cider
  availability_zone       = var.az_1
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-subnet-1"
  }
}


resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.public_subnet_2_cider
  availability_zone       = var.az_2
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-subnet-2"
  }
}
