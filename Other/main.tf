terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.87.0"
    }
  }
}

# provider details
provider "azurerm" {
  subscription_id = var.subscriptionID
  features {}
}