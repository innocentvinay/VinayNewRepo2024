resource "azurerm_public_ip" "PIP1" {
    for_each = var.pip
  name                = each.value.pipname
  location            = each.value.location
  resource_group_name = each.value.rgname
  allocation_method   = each.value.allocation_method
  sku                 = each.value.  sku
}