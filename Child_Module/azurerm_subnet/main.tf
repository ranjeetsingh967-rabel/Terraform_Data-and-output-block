resource "azurerm_subnet" "great-subnet" {

  for_each = var.subnet

  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.resource
  address_prefixes     = each.value.address_prefixes
}