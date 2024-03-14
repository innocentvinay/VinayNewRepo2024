resource "azurerm_network_security_group" "NSG1" {
    for_each = var.nsg
  name                = each.value.nsgname
  location            = each.value.location
  resource_group_name = each.value.rgname

  dynamic "security_rule" {
    for_each = var.security_rules
    content {
      name                       = security_rule.value.name
      priority                   = security_rule.value.priority
      direction                  = security_rule.value.direction
      access                     = security_rule.value.access
      protocol                   = security_rule.value.protocol
      source_port_range          = security_rule.value.source_port_range
      destination_port_range     = security_rule.value.destination_port_range
      source_address_prefix      = security_rule.value.source_address_prefix
      destination_address_prefix = security_rule.value.destination_address_prefix
    }
  }
  # // write sample terraform code to create NSG security rules
  # // name                       = "rule1"
  # // priority                   = 100
  # // direction                  = "Inbound"
  # // access                     = "Allow"
  # // protocol                   = "Tcp"
  # // source_port_range          = "*"
  # // destination_port_range     = "22"
  # // source_address_prefix      = "*"
  # // destination_address_prefix = "*"

  



}