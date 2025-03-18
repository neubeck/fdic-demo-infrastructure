terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.23.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "6379e835-fe89-4351-868c-f63ece84a338"
}