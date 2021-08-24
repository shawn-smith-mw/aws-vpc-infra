terraform {
  backend "s3" {
    bucket = "shawn-terraform-backend-bucket"
    key    = "vpc/terraform/state"
    region = "us-east-2"
  }
}

provider "aws" {
    region = local.region
}

locals {
  region = "us-east-2"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc-name
  cidr = var.vpc-cidr

  azs             = var.availability-zones
  private_subnets = var.private-subnets
  public_subnets  = var.public-subnets

  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}