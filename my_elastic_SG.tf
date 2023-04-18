resource "aws_security_group" "elastic-sec" {
  name        = "elastic-cache-security-group"
  description = "elastic-cache-security-group"
  vpc_id      = module.network.vpc_id

  ingress {
    description      = "Allows SSH"
    from_port        = 6379
    to_port          = 6379
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