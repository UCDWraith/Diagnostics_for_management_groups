terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "2.3.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.log_analytics_subscription_id
  features {}
}

provider "azapi" {
  tenant_id = data.azurerm_client_config.current.tenant_id
}
