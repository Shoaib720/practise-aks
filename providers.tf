terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.12.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
  backend "azurerm" {
    
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

provider "random" {
  # Configuration options
}