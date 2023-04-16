# create app EC2 instance 

resource "aws_instance" "app-instance" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  subnet_id = aws_subnet.private-subnet-1.id
  vpc_security_group_ids = [aws_security_group.app_sg.id]
  key_name = aws_key_pair.my_instance_key.key_name

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              echo "Hello, world!" > /var/www/html/index.html
              systemctl enable httpd
              systemctl start httpd
              EOF
}

