output "virtual_network_id" {
  value = {
    for key, vnet in azurerm_virtual_network.great-vnet :
    key => vnet.id
  }
}