variable "virtual" {
  type = map(object({
    vnet_name     = string
    location      = string
    resource      = string
    address_space = list(string)
  }))
}