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
