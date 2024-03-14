resource "azurerm_subnet" "sub" {
    for_each = var.subnet
  name                 =each.value.subname
  resource_group_name  = each.value.rgname
  virtual_network_name =each.value.vnetname
  address_prefixes     = each.value.address_prefixes 
}