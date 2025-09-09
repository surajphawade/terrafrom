variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network resource."
}

variable "rg_name" {
  type        = string
  description = "Name of the Resource Group where the Virtual Network will be created."
}

variable "location" {
  type        = string
  description = "Azure region where the Virtual Network will be deployed (e.g., eastus, westeurope)."
}

variable "address_space" {
  type = list(any)
  description = "Address space of vitual network"
}

