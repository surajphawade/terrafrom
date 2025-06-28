
resource "azurerm_resource_group" "az-rg" {
  name     = var.Azure_Resource_group_Name
  location = var.Azure_Resource_group_location
}