terraform {
  backend "azurerm" {
    resource_group_name  = "tfstates"
    storage_account_name = "aktfstateaccount"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}


# backend-config-file.tfvars
# resource_group_name  = "tfstates"
# storage_account_name = "aktfstateaccount"
# container_name       = "tfstate"
# key                  = "terraform.tfstate"