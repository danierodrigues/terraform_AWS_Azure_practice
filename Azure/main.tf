terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.31.1"
    }
  }
}

# Provides configuration details for the Azure Terraform provider
provider "azurerm" {
  features {}
}

# Provides the Resource Groups to logically containe resources
resource "azurerm_resource_group" "rg" {
  name     = "r_group"
  location = "southcentralus"
  tags = {
    environment = "dev"
    source      = "Terraform"
  }
}
