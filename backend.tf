# Terraform backend to store the state file securely

terraform {
  backend "s3" {
    bucket = "nada-terraform-state-bucket"
    key    = "terrafrom.tfstate"
    region = var.REGION
    dynamodb_table = "NadaMarey-01"
    partition_key = "LockID"
  }
}
