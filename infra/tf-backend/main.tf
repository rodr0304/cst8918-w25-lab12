terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Resource Group
resource "azurerm_resource_group" "backend_rg" {
  name     = "RODR0304-githubactions-rg"
  location = "Canada Central"
}

# Storage Account
resource "azurerm_storage_account" "backend_storage" {
  name                = "rodr304githubactionsgrp7"
  resource_group_name = azurerm_resource_group.backend_rg.name
  location            = azurerm_resource_group.backend_rg.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version = "TLS1_2"

  allow_nested_items_to_be_public = false
}

# Blob Container
resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.backend_storage.id
  container_access_type = "private"
}

#######################################
# Outputs
#######################################

output "resource_group_name" {
  description = "Terraform backend resource group"
  value       = azurerm_resource_group.backend_rg.name
}

output "storage_account_name" {
  description = "Terraform backend storage account"
  value       = azurerm_storage_account.backend_storage.name
}

output "container_name" {
  description = "Terraform backend container"
  value       = azurerm_storage_container.tfstate.name
}

output "arm_access_key" {
  description = "Primary access key for Terraform backend"
  value       = azurerm_storage_account.backend_storage.primary_access_key
  sensitive   = true
}