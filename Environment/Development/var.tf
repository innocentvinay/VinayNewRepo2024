variable "vkrg" {
  # type = object({
  #   name = string
  #   location = string
  #   tags = optional(map(string))
  # })
  default = {}

}
# variable "vkvnet" {
#     type = map(object({
#         vnetname=string
#         location=string
#         rgname=string
#          address_space =string
#          tags=optional(map(string))
#     }))

# }
variable "vkvnet" {

  default = {}
}
variable "subnet" {
  default = {}

}
variable "nsg" {
  default = {}

}
variable "security_rules" {

}
variable "pip" {
  default = {}

}
variable "vksa" {
  type = map(any)

}
variable "vkconst" {
  type = map(any)
}
variable "bastion" {
  type = map(any)

}
variable "keyvault" {
  type = map(any)

}

