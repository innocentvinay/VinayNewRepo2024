resource "azurerm_network_interface" "NIC1" {
    for_each = var.NIC
  name                = each.value.NICname
  location            = each.value.location
  resource_group_name =each.value.rgname

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}
data "azurerm_subnet" "subnet" {
  for_each = var.NIC
  name                 = each.value.subname
  virtual_network_name = each.value.vnetname
  resource_group_name  = each.value.rgname
  
}