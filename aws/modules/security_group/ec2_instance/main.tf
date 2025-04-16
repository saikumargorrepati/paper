resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  iam_instance_profile        = var.iam_instance_profile
  associate_public_ip_address = true

  tags = {
    Name = var.name
  }
}

## To create terraform backend

terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "aws/terraform.tfstate"
    region = "us-east-1"
  }
}
