# associate the private subnet with the private route table

resource "aws_route_table_association" "private_rta" {
  subnet_id = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private_rta_2" {
  subnet_id = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.private_rt.id
}