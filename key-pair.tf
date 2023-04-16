# RSA key of size 4096 bits
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# instance publlic key 
resource "aws_key_pair" "my_instance_key" {
  key_name   = "instance-public-key"
  public_key = tls_private_key.rsa.public_key_openssh
}

# storing the key
resource "local_file" "my_instance_key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "instance-private-key.pem"
}

