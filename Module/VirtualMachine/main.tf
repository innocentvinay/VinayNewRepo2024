resource "azurerm_linux_virtual_machine" "Vm1" {
    for_each = var.vm
  name                = each.value.vmname
  resource_group_name = each.value.rgname
  location            = each.value.location
  size                = each.value.size
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}