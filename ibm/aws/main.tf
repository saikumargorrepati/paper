provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source              = "./modules/ec2"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  subnet_id           = var.subnet_id
  security_group_id   = var.security_group_id
  iam_instance_profile = var.iam_instance_profile
  name                = var.instance_name
}
