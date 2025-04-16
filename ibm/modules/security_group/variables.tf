variable "name" {}
variable "vpc_id" {}
variable "ingress_rules" {
  type = list(object({
    port        = number
    cidr_block  = string
  }))
}
