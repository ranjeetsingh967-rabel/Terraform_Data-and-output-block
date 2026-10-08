variable "vms" {
  type = map(object({
    vms_name             = string
    location             = string
    resource             = string
    size                 = string
    admin_username       = string
    admin_password       = string
    caching              = string
    storage_account_type = string
    publisher            = string
    offer                = string
    sku                  = string
    version              = string
    nic_key              = string
  }))
}

variable "nic_id" {
  type = map(string)
}