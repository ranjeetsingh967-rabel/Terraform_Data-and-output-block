variable "nsg" {
  type = map(object({
    nsg_name = string
    location = string
    resource = string
  }))
}