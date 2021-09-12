# terraform apply -var-file="common.tfvars"

region  = "us-east-2"
bucket  = "backet_name"
key     = "terraform.tfstate"
profile = "terraform"
subnet_availability_zone = "us-east-2a"
ec2_instance_type="t2.micro"
ec2_ami="ami-00399ec92321828f5" # Ubuntu 18.04 LTS (64-bit x86)  Free Tier eligible