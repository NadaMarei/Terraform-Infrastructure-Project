module "network" {
  source = "./network"
  vpc_cidr = var.VPC_CIDR
  public_subnet_1_cider = var.PUBLIC_SUBNET_1_CIDR
  public_subnet_2_cider = var.PUBLIC_SUBNET_2_CIDR
  private_subnet_1_cider = var.PRIVATE_SUBNET_1_CIDR
  private_subnet_2_cider = var.PRIVATE_SUBNET_2_CIDR
  az_1 = var.AZ_1
  az_2 = var.AZ_2
}
