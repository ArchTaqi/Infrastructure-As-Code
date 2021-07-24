provider "aws" {
  profile = var.profile
  region  = var.region
}

module "vpc" {
  source = "../modules/vpc"
}

module "public-subnet" {
  source = "../modules/public-subnet"
  vpc_id = module.vpc.vpc_id
  subnet_availability_zone = var.subnet_availability_zone
}
