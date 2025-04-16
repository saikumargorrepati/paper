provider "ibm" {
  region = var.ibm_region
}

module "vsi_instance" {
  source             = "./modules/vsi"
  image_id           = var.image_id
  profile            = var.profile
  zone               = var.zone
  vpc_id             = var.vpc_id
  subnet_id          = var.subnet_id
  security_group_id  = var.security_group_id
  ssh_key_id         = var.ssh_key_id
  name               = var.instance_name
}
