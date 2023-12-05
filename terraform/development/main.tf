module "resource_group" {
  source              = "../modules/rg"
  location            = var.location
  environment         = var.environment
  resource_group_name = var.resource_group_name
}

module "virtual_network" {
  source                        = "../modules/vnet"
  depends_on                    = [module.resource_group]
  virtual_network_name          = var.virtual_network_name
  virtual_network_address_space = var.virtual_network_address_space
  virtual_network_location      = var.location
  resource_group_name           = module.resource_group.resource_group_name
}

module "subnet" {
  source                  = "../modules/subnet"
  depends_on              = [module.virtual_network]
  subnet_name             = var.subnet_name
  resource_group_name     = module.resource_group.resource_group_name
  virtual_network_name    = module.virtual_network.virtual_network_name
  subnet_address_prefixes = var.subnet_address_prefixes
}

module "security_group" {
  source              = "../modules/sg"
  depends_on          = [module.subnet]
  security_group_name = var.security_group_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
}
