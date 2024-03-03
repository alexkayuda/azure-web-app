# Resource Group
resource_group_name = "dev-rg"
location            = "westus2"
environment         = "dev"

# Virtual Network
virtual_network_name          = "dev-vnet-1"
virtual_network_address_space = ["10.0.0.0/16"]

# Subnet 1
subnet-1_name             = "dev-subnet-1"
subnet-1_address_prefixes = ["10.0.0.0/24"]

# Subnet 2
subnet-2_name             = "dev-subnet-2"
subnet-2_address_prefixes = ["10.0.1.0/24"]

# Network Interface
network_interface_name                          = "dev-nic"
network_interface_ip_config_name                = "dev-nic-ip-config-name"
network_interface_ip_config_subnet_id           = 123
network_interface_private_ip_address_allocation = "Dynamic"

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

# Load Balancer
lb_name                        = "dev-lb"
lb_sku                         = "Standard"
lb_sku_tier                    = "Regional"
lb_frontend_ip_config          = "LB_FrontEnd_IP_Config"
lb_public_ip_name              = "dev-PublicIPForLB"
lb_public_ip_allocation_method = "Dynamic"
lb_backend_address_pool_name   = "dev-backend-pool-name"
lb_probe_name                  = "tcpProbe"
lb_probe_port                  = 80
lb_probe_protocol              = "Tcp"
