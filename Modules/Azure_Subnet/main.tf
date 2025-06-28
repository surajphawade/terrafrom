resource "azurerm_subnet" "example" {
  name                 = var.Azure_Subnet_name
  resource_group_name  = var.Azure_Resource_group_Name
  virtual_network_name = var.azure_virtual_network_name
  address_prefixes     = ["10.0.1.0/24"]

}