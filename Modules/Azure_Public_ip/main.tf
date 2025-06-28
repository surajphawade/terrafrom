resource "azurerm_public_ip" "az-pip" {
  name                = var.Azure_Public_ip_name
  resource_group_name = var.Azure_Resource_group_Name
  location            = var.Azure_Resource_group_location
  allocation_method   = "Dynamic"

}