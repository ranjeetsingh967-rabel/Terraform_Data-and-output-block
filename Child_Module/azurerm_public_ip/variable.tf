variable "pip" {
  type = map(object({
    pip_name          = string
    resource          = string
    location          = string
    allocation_method = string
  }))
}