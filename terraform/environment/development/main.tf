module "resource_group" {
    source                  = "../modules/rg/"
    location                = var.location
    environment             = var.environment
    resource_group_name     = var.resource_group_name
}