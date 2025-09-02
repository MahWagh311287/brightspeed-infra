terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }

  backend "azurerm" {
    storage_account_name = "brightspeedsa"
    container_name       = "brightspeed-container"
    tenant_id            = "ccd94d3f-bbc6-4eb2-b7a1-b35b1d9e7049"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "b23d929c-5d14-4285-a3cd-840ec9c55cde"
  features {}
}