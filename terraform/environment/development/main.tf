provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name     = "project-one-rg"
  location = "WEST US 2"

  tags = {
    environment = "development"
  }
}