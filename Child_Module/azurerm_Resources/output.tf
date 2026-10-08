output "resource_group_id" {
  value = {
    for key, rg in azurerm_resource_group.great :
    key => rg.id
  }
}