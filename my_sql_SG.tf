resource "aws_security_group" "mysql-sec" {
  name        = "mysql-security-group"
  description = "mysql-security-group"
  vpc_id      = module.network.vpc_id

  ingress {
    description      = "ssh from inside"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = [module.network.vpc_cidr]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "private-sec"
  }
}