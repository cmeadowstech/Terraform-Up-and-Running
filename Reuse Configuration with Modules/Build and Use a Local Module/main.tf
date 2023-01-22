terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

module "static_webpage" {
  source = "./modules/azure-static-webpage"

  location     = "Central US"
  rg-name      = "test-rg"
  storage-name = "tststrg203923"

  tags = {
    environment = "dev"
    project     = "TestModule"
  }
}