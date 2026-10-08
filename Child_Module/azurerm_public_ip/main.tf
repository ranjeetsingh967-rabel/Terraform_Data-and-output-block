resource "azurerm_public_ip" "great-pip" {

  for_each = var.pip

  name                = each.value.pip_name
  resource_group_name = each.value.resource
  location            = each.value.location
  allocation_method   = each.value.allocation_method

  tags = {
    environment = "UAT"
  }
}