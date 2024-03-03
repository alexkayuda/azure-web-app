resource "azurerm_network_interface" "network_interface" {
  name                = var.network_interface_name
  resource_group_name = var.resource_group_name
  location            = var.location

  ip_configuration {
    name                          = var.network_interface_ip_config_name
    subnet_id                     = var.network_interface_ip_config_subnet_id
    private_ip_address_allocation = var.network_interface_private_ip_address_allocation
  }
}
