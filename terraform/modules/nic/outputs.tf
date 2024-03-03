output "nic_id" {
  value = azurerm_network_interface.network_interface.id
}

output "nic_name" {
  value = azurerm_network_interface.network_interface.name
}

output "nic_ip_config_name" {
  value = azurerm_network_interface.network_interface.ip_configuration.name
}
