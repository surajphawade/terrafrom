terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.90.0"
    }
  }
  # backend "azurerm" {
  #     resource_group_name = "value"
  #     tenant_id = "value"
  #     container_name = "value"
  #     key = "value"
  #   }
}

provider "azurerm" {
  features {}
  subscription_id = "2e333137-3307-4678-a744-a2d37508c632"
}