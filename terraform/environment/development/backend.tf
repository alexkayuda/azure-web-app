terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.8"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstates"
    storage_account_name = "aktfstateaccount"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}