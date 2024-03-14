resource "azurerm_storage_account" "vinaysa" {
    for_each = var.vksa
  name                     = each.value.saname
  resource_group_name      = each.value.rgname
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
   tags                    = each.value.tags
} 