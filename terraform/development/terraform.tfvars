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

# Security Group
security_group_name = "dev-sg-1"

# Security Group Rule - Allow HTTP
security_group_rule_allow_http_name                       = "Allow_HTTP"
security_group_rule_allow_http_priority                   = 1001
security_group_rule_allow_http_direction                  = "Inbound"
security_group_rule_allow_http_access                     = "Allow"
security_group_rule_allow_http_protocol                   = "Tcp"
security_group_rule_allow_http_source_port_range          = "*"
security_group_rule_allow_http_destination_port_range     = "80"
security_group_rule_allow_http_source_address_prefix      = "*"
security_group_rule_allow_http_destination_address_prefix = "*"

# Security Group Rule - Allow SSH
security_group_rule_allow_ssh_name                       = "Allow_SSH"
security_group_rule_allow_ssh_priority                   = 1002
security_group_rule_allow_ssh_direction                  = "Inbound"
security_group_rule_allow_ssh_access                     = "Allow"
security_group_rule_allow_ssh_protocol                   = "Tcp"
security_group_rule_allow_ssh_source_port_range          = "*"
security_group_rule_allow_ssh_destination_port_range     = "22"
security_group_rule_allow_ssh_source_address_prefix      = "*"
security_group_rule_allow_ssh_destination_address_prefix = "*"
