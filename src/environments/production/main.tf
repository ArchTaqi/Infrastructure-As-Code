provider "aws" {
  profile = var.profile
  region  = var.region
}

module "vpc" {
  source = "../../modules/vpc"
}

module "public_subnet" {
  source = "../../modules/public-subnet"
  vpc_id = module.vpc.vpc_id
  subnet_availability_zone = var.subnet_availability_zone
}

module "internet_gateway" {
  source = "../../modules/internet-gateway"

  vpc_id = module.vpc.vpc_id
}

module "route_table" {
  source = "../../modules/route-table"

  vpc_id              = module.vpc.vpc_id
  internet_gateway_id = module.internet_gateway.internet_gateway_id
  public_subnet_id    = module.public_subnet.public_subnet_id
}

module "ec2" {
  source = "../../modules/ec2"
  
  ec2_ami                 = var.ec2_ami
  ec2_instance_type       = var.ec2_instance_type
  vpc_id                  = module.vpc.vpc_id
  public_subnet_id        = module.public_subnet.public_subnet_id
}
