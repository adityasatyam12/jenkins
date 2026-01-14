terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"  // Updated to latest major version compatible as of 2026 (4.57.0 available)
    }
  }

  backend "azurerm" {
    resource_group_name  = "sat-rg"
    storage_account_name = "satyamtfstatestorage123"  // Use your unique name
    container_name       = "saty-terraform-state"
    key                  = "jenkins-demo.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "rg" {
  name     = "sat-rg2"
  location = "East US"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "SatyamJenkinsVNet2"
  address_space       = ["10.10.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}