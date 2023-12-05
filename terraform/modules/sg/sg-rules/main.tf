resource "azurerm_network_security_rule" "security_rule" {
  name                        = var.security_group_rule_name
  resource_group_name         = var.resource_group_name
  network_security_group_name = var.security_group_name
  priority                    = var.security_group_rule_priority
  direction                   = var.security_group_rule_direction
  access                      = var.security_group_rule_access
  protocol                    = var.security_group_rule_protocol
  source_port_range           = var.security_group_rule_source_port_range
  destination_port_range      = var.security_group_rule_destination_port_range
  source_address_prefix       = var.security_group_rule_source_address_prefix
  destination_address_prefix  = var.security_group_rule_destination_address_prefix
}
