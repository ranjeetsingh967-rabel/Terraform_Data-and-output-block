output "resource_group_id" {
  value = module.resource.resource_group_id
}

output "virtual_network_id" {
  value = module.virtual.virtual_network_id
}

output "subnet_id" {
  value = module.subnet.subnet_id
}

output "public_ip_id" {
  value = module.public-pip.public_ip_id
}

output "nic_id" {
  value = module.nic.nic_id
}

output "nsg_id" {
  value = module.nsg.nsg_id
}

output "vm_id" {
  value = module.vms.vm_id
}

output "key_vault_id" {
  value = module.key_vault.key_vault_id
}

output "key_vault_name" {
  value = module.key_vault.key_vault_name
}