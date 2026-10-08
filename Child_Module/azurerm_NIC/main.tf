resource "azurerm_network_interface" "great-nic" {
  for_each = var.nic

  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource

  ip_configuration {
    name                          = each.value.name
    subnet_id                     = var.subnet_id[each.value.subnet_key]
    private_ip_address_allocation = each.value.private_ip_address_allocation
    public_ip_address_id          = var.public_ip_id[each.value.pip_key]
  }
}