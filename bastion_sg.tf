# create a security group that allows SSH from 0.0.0.0/0

resource "aws_security_group" "bastion_sg" {
  vpc_id = aws_vpc.my_vpc.id
  name_prefix = "bastion-sg-"
  description = "Security group for bastion instance"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
