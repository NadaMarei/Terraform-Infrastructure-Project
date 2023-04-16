# create a public subnets

resource "aws_subnet" "public_subnet_1" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.PUBLIC_SUBNET_1_CIDR 
  availability_zone = var.AZ_1
   map_public_ip_on_launch = "true"

  tags = {
    Name = "public-subnet-1"
  }
}


resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.PUBLIC_SUBNET_2_CIDR
  availability_zone = var.AZ_2
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-subnet-2"
  }
}
