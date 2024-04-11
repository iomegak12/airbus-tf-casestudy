module "vpc" {
  source               = "./modules/vpc"
  private_subnet_cidrs = var.private_subnet_cidrs
  public_subnet_cidrs  = var.public_subnet_cidrs
  azs                  = var.azs
}
