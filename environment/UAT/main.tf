module "resource" {
  resource = var.resource
  source   = "../../Child_Module/azurerm_Resources"
}

module "virtual" {
  depends_on = [module.resource]
  virtual    = var.virtual
  source     = "../../Child_Module/azurerm_virtual_network"
}

module "subnet" {
  depends_on = [module.virtual]
  subnet     = var.subnet
  source     = "../../Child_Module/azurerm_subnet"
}

module "public-pip" {
  depends_on = [module.resource]
  pip        = var.pip
  source     = "../../Child_Module/azurerm_public_ip"
}
module "nic" {
  depends_on = [module.subnet]
  nic        = var.nic
  source     = "../../Child_Module/azurerm_NIC"

}

module "nsg" {
  depends_on = [module.subnet]
  nsg        = var.nsg
  source     = "../../Child_Module/azurerm_NSG"
}

module "vms" {
  depends_on = [module.nic]
  vms        = var.vms
  source     = "../../Child_Module/azurerm_virtual_machine"

}
# module "key_vault" {
#   depends_on = [module.resource]
#   keyvault   = var.keyvault
#   source     = "../../Child_Module/azurerm_keyvault"

# }