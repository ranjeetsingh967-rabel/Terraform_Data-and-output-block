output "subnet_id" {
  value = {
    for key, subnet in azurerm_subnet.great-subnet :
    key => subnet.id
  }
}