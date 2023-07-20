terraform {
  backend "azurerm" {
    resource_group_name      = "ds-rg-test"
    storage_account_name     = "dsstoragetest01"
    container_name           = "container01"
    key                      = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.65.0"
    }
  }
}

provider "azurerm" {
  features {}
}

