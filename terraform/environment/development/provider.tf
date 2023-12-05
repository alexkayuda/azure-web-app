terraform {
    required_version = "1.6.5"

    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "3.83.0"
        }
    }

    backend "azurerm" {
        subscription_id      = "30501ef0-77de-4327-ba85-2d06867b78f7"
        resource_group_name  = "tfstates"
        storage_account_name = "aktfstateaccount"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
    }
}

provider "azurerm" {
    features {
        resource_group {
            prevent_deletion_of_contains_resources = true
        }
    }
}