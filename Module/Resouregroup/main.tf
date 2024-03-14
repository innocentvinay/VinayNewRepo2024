resource "azurerm_resource_group" "Rg1" {
    for_each = var.vkrg
  name     = each.value.name
  location = each.value.location
  tags = each.value.tags
}