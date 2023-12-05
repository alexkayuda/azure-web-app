resource "azurerm_virtual_network" "dev-vnet-1" {
  location = "westus2"
  environment = "dev"
  resource_group_name = "dev-rg"

  tags = {
    environment = "${var.environment}"
  }
}