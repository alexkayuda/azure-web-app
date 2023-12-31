module "resource_group" {
  source              = "../modules/rg"
  location            = var.location
  environment         = var.environment
  resource_group_name = var.resource_group_name
}

module "virtual_network" {
  source                        = "../modules/vnet"
  depends_on                    = [module.resource_group]
  resource_group_name           = module.resource_group.resource_group_name
  virtual_network_name          = var.virtual_network_name
  virtual_network_address_space = var.virtual_network_address_space
  virtual_network_location      = var.location
}

module "subnet-1" {
  source                  = "../modules/subnet"
  depends_on              = [module.virtual_network]
  resource_group_name     = module.resource_group.resource_group_name
  virtual_network_name    = module.virtual_network.virtual_network_name
  subnet_name             = var.subnet-1_name
  subnet_address_prefixes = var.subnet-1_address_prefixes
}

module "subnet-2" {
  source                  = "../modules/subnet"
  depends_on              = [module.virtual_network]
  resource_group_name     = module.resource_group.resource_group_name
  virtual_network_name    = module.virtual_network.virtual_network_name
  subnet_name             = var.subnet-2_name
  subnet_address_prefixes = var.subnet-2_address_prefixes
}

module "security_group" {
  source              = "../modules/sg"
  depends_on          = [module.subnet-1]
  resource_group_name = module.resource_group.resource_group_name
  security_group_name = var.security_group_name
  location            = var.location
}

module "allow-http_security_rule" {
  source                                         = "../modules/sg/sg-rules"
  depends_on                                     = [module.security_group]
  resource_group_name                            = module.resource_group.resource_group_name
  security_group_name                            = module.security_group.security_group_name
  security_group_rule_name                       = var.security_group_rule_allow_http_name
  security_group_rule_priority                   = var.security_group_rule_allow_http_priority
  security_group_rule_direction                  = var.security_group_rule_allow_http_direction
  security_group_rule_access                     = var.security_group_rule_allow_http_access
  security_group_rule_protocol                   = var.security_group_rule_allow_http_protocol
  security_group_rule_source_port_range          = var.security_group_rule_allow_http_source_port_range
  security_group_rule_destination_port_range     = var.security_group_rule_allow_http_destination_port_range
  security_group_rule_source_address_prefix      = var.security_group_rule_allow_http_source_address_prefix
  security_group_rule_destination_address_prefix = var.security_group_rule_allow_http_source_address_prefix
}

module "allow-ssh_security_rule" {
  source                                         = "../modules/sg/sg-rules"
  depends_on                                     = [module.security_group]
  resource_group_name                            = module.resource_group.resource_group_name
  security_group_name                            = module.security_group.security_group_name
  security_group_rule_name                       = var.security_group_rule_allow_ssh_name
  security_group_rule_priority                   = var.security_group_rule_allow_ssh_priority
  security_group_rule_direction                  = var.security_group_rule_allow_ssh_direction
  security_group_rule_access                     = var.security_group_rule_allow_ssh_access
  security_group_rule_protocol                   = var.security_group_rule_allow_ssh_protocol
  security_group_rule_source_port_range          = var.security_group_rule_allow_ssh_source_port_range
  security_group_rule_destination_port_range     = var.security_group_rule_allow_ssh_destination_port_range
  security_group_rule_source_address_prefix      = var.security_group_rule_allow_ssh_source_address_prefix
  security_group_rule_destination_address_prefix = var.security_group_rule_allow_ssh_source_address_prefix
}
