resource "ibm_is_security_group" "this" {
  name = var.name
  vpc  = var.vpc_id
}

resource "ibm_is_security_group_rule" "inbound" {
  for_each  = { for idx, rule in var.ingress_rules : idx => rule }

  group     = ibm_is_security_group.this.id
  direction = "inbound"
  remote    = each.value.cidr_block

  tcp {
    port_min = each.value.port
    port_max = each.value.port
  }
}
