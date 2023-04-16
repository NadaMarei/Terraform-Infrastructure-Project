# Terraform backend to store the state file securely

terraform {
  backend "s3" {
    bucket = "nada-terraform-state-bucket"
    key    = "terrafrom.tfstate"
    region = "us-east-1"
    dynamodb_table = "NadaMarey-01"
  }
}
