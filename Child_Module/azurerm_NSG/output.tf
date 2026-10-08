output "nsg_id" {
  value = {
    for key, nsg in azurerm_network_security_group.great-nsg :
    key => nsg.id
  }
}