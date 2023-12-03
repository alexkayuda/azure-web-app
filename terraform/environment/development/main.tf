provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name     = "-rg"
  location = "WEST US 2"

  tags = {
    environment = "Dev"
  }
}