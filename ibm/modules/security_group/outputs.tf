output "security_group_id" {
  description = "The ID of the IBM Cloud Security Group"
  value       = ibm_is_security_group.this.id
}

output "security_group_name" {
  description = "The name of the IBM Cloud Security Group"
  value       = ibm_is_security_group.this.name
}
