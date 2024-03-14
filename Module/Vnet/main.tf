resource "azurerm_virtual_network" "Vinayvnet" {
  for_each = var.vkvnet
  name                = each.value.vnetname
  location            =each.value.location
  resource_group_name =each.value.rgname
  address_space       = ["10.0.0.0/16"]
  tags = each.value.tags


}