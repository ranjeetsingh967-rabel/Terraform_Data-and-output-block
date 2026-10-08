variable "resource" {
  type = map(object({
    name     = string
    location = string
  }))
}