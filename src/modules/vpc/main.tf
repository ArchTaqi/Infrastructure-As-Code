provider "aws" {
  region = "us-east-2" # US East(Ohio)
  profile = "archtaqi-1"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
