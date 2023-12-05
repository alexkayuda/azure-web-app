# Resource Group
resource_group_name = "dev-rg"
location            = "westus2"
environment         = "dev"

# Virtual Network
virtual_network_name          = "dev-vnet-1"
virtual_network_address_space = ["10.0.0.0/16"]

# Subnet
subnet_name             = "dev-subnet-1"
subnet_address_prefixes = ["10.0.1.0/24"]
