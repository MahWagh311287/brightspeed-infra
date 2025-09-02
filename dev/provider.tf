terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }

  backend "azurerm" {
    storage_account_name = "brightspeedsa1"
    container_name       = "brightspeed-container"
    key                  = "terraform.tfstate"
    resource_group_name = "brightspeed-rg"
  }
}

provider "azurerm" {
  subscription_id = "b23d929c-5d14-4285-a3cd-840ec9c55cde"
  features {}
}