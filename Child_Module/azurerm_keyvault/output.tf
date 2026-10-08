output "key_vault_id" {
  value = {
    for key, vault in azurerm_key_vault.great-vault :
    key => vault.id
  }
}

output "key_vault_name" {
  value = {
    for key, vault in azurerm_key_vault.great-vault :
    key => vault.name
  }
}