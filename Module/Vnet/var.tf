# variable "vkvnet" {
#     type = map(object({
#         vnetname=string
#         location=string
#         rgname=string
#          address_space =string
#          tags=optional(map(string))
#     }))
  
# }
# ../../Module/Vnet/var.tf

# variable "vkvnet" {
#   type = object({
#     vnet1 = object({
#       vnetname      = string
#       location      = string
#       rgname        = string
#       address_space = string
#       tags          = map(string)
#     })
#     # Add other necessary attributes if any
#   })
# }
variable "vkvnet" {
  
}
