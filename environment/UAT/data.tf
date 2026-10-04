# data "azurerm_subnet" "great-subnet" {
#   for_each             = var.nic
#   name                 = each.value.subnet_name
#   virtual_network_name = each.value.vnet_name
#   resource_group_name  = each.value.resource_name
# }
# data "azurerm_public_ip" "great-pip" {
#   for_each            = var.nic
#   name                = each.value.pip_name
#   resource_group_name = each.value.resource_name
# }
# data "azurerm_key_vault" "great-vault" {
#   name                = "great-vault"
#   resource_group_name = "great-rg"
# }
# data "azurerm_key_vault_secret" "vm_password" {
#   name         = "vm-admin-password"
#   key_vault_id = data.azurerm_key_vault.great-vault.id
# }