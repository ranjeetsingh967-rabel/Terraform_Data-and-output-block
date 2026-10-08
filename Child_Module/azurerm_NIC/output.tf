output "nic_id" {
  value = {
    for key, nic in azurerm_network_interface.great-nic :
    key => nic.id
  }
}