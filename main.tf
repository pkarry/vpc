locals {
  common_tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.azs
  private_subnets = var.private_sub
  public_subnets  = var.public_sub

  enable_nat_gateway = true

  tags = local.common_tags
}
