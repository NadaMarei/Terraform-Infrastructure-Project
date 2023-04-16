# create a security group that allows SSH and port 3000 from VPC CIDR only:

resource "aws_security_group" "app_sg" {
  vpc_id = module.network.vpc_id
  name_prefix = "app-sg-"
  description = "Security group for app instance"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [aws_vpc.my_vpc.cidr_block]
  }

  ingress {
    from_port = 3000
    to_port = 3000
    protocol = "tcp"
    cidr_blocks = [aws_vpc.my_vpc.cidr_block]
  }
}
