data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "great-vault" {

  for_each = var.keyvault

  name                = each.value.keyvault_name
  location            = each.value.location
  resource_group_name = each.value.resource_name

  tenant_id = data.azurerm_client_config.current.tenant_id

  sku_name                   = "premium"
  soft_delete_retention_days = 7
  rbac_authorization_enabled = false

  access_policy {

    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Create",
      "Delete",
      "Get",
      "Purge",
      "Recover",
      "Update",
      "GetRotationPolicy",
      "SetRotationPolicy"
    ]

    secret_permissions = [
      "Get",
      "Set"
    ]
  }
}