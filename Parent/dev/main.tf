module "resource_group" {
  source   = "../../child/resource_group"
  for_each = var.resource-group
  
   name     = each.key
  location = each.value

}

module "azurerm_virtual_network" {
  source = "../../child/virtual_network"
  for_each = var.azure-virtual-network

  vnet_name = each.value.vnet_name
  location = each.value.location
  rg_name = each.value.rg_name
  address_space = each.value.address_space
  
}

module "azurerm_subnet" {
  source = "../../child/subnet"
  for_each = var.azure-subnet

  snet_name = each.value.name
  rg_name = each.value.rg_name
  vnet_name = each.value.vnet_name
  address_prefixes = each.value.address_prefixes
  
}