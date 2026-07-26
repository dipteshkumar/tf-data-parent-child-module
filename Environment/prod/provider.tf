terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "dipt-rg"
    storage_account_name = "diptstrg"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
  subscription_id = "c4b77061-0024-4ace-a30b-97358212e3ef"
}