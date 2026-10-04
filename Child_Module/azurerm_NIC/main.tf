resource "azurerm_network_interface" "great-nic" {
  for_each            = var.nic
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource
  ip_configuration {
    name                          = each.value.name
    subnet_id                     = data.azurerm_subnet.great-subnet[each.key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
    public_ip_address_id          = data.azurerm_public_ip.great-pip[each.key].id
  }
}