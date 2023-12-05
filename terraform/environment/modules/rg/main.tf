resource "azurerm_virtual_network" "dev-vnet-1" {
  name                = "dev-vnet-1"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.dev-rg.location
  resource_group_name = azurerm_resource_group.dev-rg.name
}