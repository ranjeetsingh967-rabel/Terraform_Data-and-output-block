terraform {
  backend "azurerm" {
    resource_group_name  = "yaml-rg"
    storage_account_name = "yamlpipelinestorage"
    container_name       = "yamlcontainer"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.5.0"
    }
  }
}
provider "azurerm" {
  features {}
}