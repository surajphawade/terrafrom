resource "azurerm_virtual_network" "az-vnet" {
  name                = var.azurerm_virtual_network_name
  location            = var.Azure_Resource_group_location
  resource_group_name = var.Azure_Resource_group_Name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

}