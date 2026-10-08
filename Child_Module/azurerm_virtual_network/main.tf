resource "azurerm_virtual_network" "great-vnet" {

  for_each = var.virtual

  name                = each.value.vnet_name
  location            = each.value.location
  resource_group_name = each.value.resource
  address_space       = each.value.address_space
}