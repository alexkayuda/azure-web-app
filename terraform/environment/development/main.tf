module "resource_group" {
    source                  = "../modules/rg
    location                = var.location
    environment             = var.environment
    resource_group_name     = var.resource_group_name
}

# Virtual Network 1
resource "azurerm_virtual_network" "dev-vnet-1" {
  name                = "dev-vnet-1"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.dev-rg.location
  resource_group_name = azurerm_resource_group.dev-rg.name
}

# Subnet 1
resource "azurerm_subnet" "dev-subnet-1" {
  name                 = "dev-subnet-1"
  resource_group_name  = azurerm_resource_group.dev-rg.name
  virtual_network_name = azurerm_virtual_network.dev-vnet-1.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Security Group 1
resource "azurerm_network_security_group" "dev-nsg-1" {
  name                = "dev-sg-1"
  location            = azurerm_resource_group.dev-rg.location
  resource_group_name = azurerm_resource_group.dev-rg.name
}

# NSG rule for HTTP (port 80)
resource "azurerm_network_security_rule" "dev-nsg-1-http" {
  name                        = "Allow_HTTP"
  resource_group_name         = azurerm_resource_group.dev-rg.name
  network_security_group_name = azurerm_network_security_group.dev-nsg-1.name
  priority                    = 1001
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
}

# NSG rule for SSH (port 22)
resource "azurerm_network_security_rule" "dev-nsg-1-ssh" {
  name                        = "Allow_SSH"
  resource_group_name         = azurerm_resource_group.dev-rg.name
  network_security_group_name = azurerm_network_security_group.dev-nsg-1.name
  priority                    = 1002
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
}