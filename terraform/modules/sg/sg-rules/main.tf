resource "azurerm_network_security_rule" "security_rule" {
  name                        = var.security_group_rule_name
  resource_group_name         = var.resource_group_name
  network_security_group_name = var.security_group_name
  priority                    = 1001
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
}
