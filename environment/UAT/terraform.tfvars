resource = {
  rg1 = {
    name     = "great-rg"
    location = "centralindia"
  }
}
virtual = {
  vnet1 = {
    vnet_name     = "great-vnet"
    location      = "centralindia"
    resource      = "great-rg"
    address_space = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet1 = {
    subnet_name      = "great-subnet"
    vnet_name        = "great-vnet"
    resource         = "great-rg"
    address_prefixes = ["10.0.1.0/24"]
  }
}
nic = {
  nic1 = {
    nic_name                      = "great-nic"
    location                      = "centralindia"
    resource                      = "great-rg"
    name                          = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_name                   = "great-subnet"
    vnet_name                     = "great-vnet"
    pip_name                      = "great-pip"

  }
}
nsg = {
  nsg1 = {
    nsg_name = "great-nsg"
    location = "centralindia"
    resource = "great-rg"

  }
}
pip = {
  pip1 = {
    pip_name          = "great-pip"
    resource          = "great-rg"
    location          = "centralindia"
    allocation_method = "Static"
  }
}
# keyvault = {
#   keyvault1 = {
#     keyvault_name = "great-vault"
#     location      = "centralindia"
#     resource_name = "great-rg"
#   }
# }
vms = {
  vm1 = {
    vms_name             = "great-vm"
    location             = "centralindia"
    resource             = "great-rg"
    size                 = "Standard_B2as_v2"
    admin_username       = "azureuser"
    admin_password       = "Admin@123456"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "ubuntu-24_04-lts"
    sku                  = "server"
    version              = "latest"
    nic_name             = "great-nic"
  }
}