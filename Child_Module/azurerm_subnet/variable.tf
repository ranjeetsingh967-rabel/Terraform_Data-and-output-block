variable "subnet" {
  type = map(object({
    subnet_name     = string
    vnet_name       = string
    resource        = string
    address_prefixes = list(string)
  }))
}