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
 provisioner "local-exec" {
    command = "echo '${tls_private_key.pk.private_key_openssh}' > ./instance-private-key.pem"
  }