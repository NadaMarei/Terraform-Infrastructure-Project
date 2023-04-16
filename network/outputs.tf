
output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.my_vpc.cidr_block
}

output "pub_sub_1_id" {
  value = aws_subnet.public_subnet_1.id
}

output "pub_sub_2_id" {
  value = aws_subnet.public_subnet_2.id
}

output "priv_sub_1_id" {
  value = aws_subnet.private-subnet-1.id
}

output "priv_sub_2_id" {
  value = aws_subnet.private-subnet-2.id
}
