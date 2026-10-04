resource "azurerm_resource_group" "great" {
  for_each = var.resource
  name     = each.value.name
  location = each.value.location

}