variable "nic" {
  type = map(object({
    nic_name                      = string
    location                      = string
    resource                      = string
    name                          = string
    private_ip_address_allocation = string
    subnet_key                    = string
    pip_key                       = string
  }))
}

variable "subnet_id" {}

variable "public_ip_id" {}