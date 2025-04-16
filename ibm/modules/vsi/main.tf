resource "ibm_is_instance" "this" {
  name     = var.name
  image    = var.image_id
  profile  = var.profile
  vpc      = var.vpc_id
  zone     = var.zone
  keys     = [var.ssh_key_id]

  primary_network_interface {
    subnet          = var.subnet_id
    security_groups = [var.security_group_id]
  }
}

## To create terraform backend

terraform {
  backend "cos" {
    bucket                = "tfstate-bucket"
    key                   = "ibm/terraform.tfstate"
    region                = "us-south"
    resource_instance_id  = "crn:v1:bluemix:public:cloud-object-storage:..."
  }
}
