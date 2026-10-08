output "vm_id" {
  value = {
    for key, vm in azurerm_linux_virtual_machine.great-vm :
    key => vm.id
  }
}