resource "azurerm_storage_container" "vinaycon" {
    for_each              = var.vkconst
  name                  = each.value.conname
  storage_account_name  = each.value.saname
  container_access_type = each.value.container_access_type
}