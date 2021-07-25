variable "profile" {
  description = "AWS Profile"
  type        = string
}

variable "region" {
  description = "Region for AWS resources"
  type        = string
}

variable "subnet_availability_zone" {
  type        = string
}

variable "ec2_instance_type" {
  type        = string
}
variable "ec2_ami" {
  type        = string
}