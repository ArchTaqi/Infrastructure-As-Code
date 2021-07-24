provider "aws" {
  profile = var.profile
  region  = var.region
}

module "vpc" {
  source = "../modules/vpc"
}

module "public_subnet" {
  source = "../modules/public-subnet"
  vpc_id = module.vpc.vpc_id
  subnet_availability_zone = var.subnet_availability_zone
}

module "internet_gateway" {
  source = "../modules/internet-gateway"

  vpc_id = module.vpc.vpc_id
}
