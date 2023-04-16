# create a security group that allows SSH and port 3000 from VPC CIDR only:

resource "aws_security_group" "app_sg" {
  vpc_id = module.network.vpc_id
  name_prefix = "app-sg-"
  description = "Security group for app instance"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [module.network.vpc_cidr]
  }

  ingress {
    from_port = 3000
    to_port = 3000
    protocol = "tcp"
    cidr_blocks = [module.network.vpc_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  } 
}
