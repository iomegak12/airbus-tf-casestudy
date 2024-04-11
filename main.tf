module "vpc" {
  source               = "./modules/vpc"
  private_subnet_cidrs = var.private_subnet_cidrs
  public_subnet_cidrs  = var.public_subnet_cidrs
  azs                  = var.azs
}

module "aws_instances" {
  source         = "./modules/aws_instances"
  instance_count = var.instance_count
  instance_type  = var.instance_type
  vpc_id         = module.vpc.vpc_id
  subnet_ids     = module.vpc.public_subnetids
}

module "load_balancer" {
  source       = "./modules/load_balancer"
  instance_ids = module.aws_instances.instance_ids
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.public_subnetids
}
