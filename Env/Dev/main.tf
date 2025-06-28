module "azurerm_resource_group" {
  source = "../../Modules/Azure_Resource_group"

}

module "azurerm_virtual_network" {
  source = "../../Modules/Azure_Virtual_Network"

}

module "azurerm_subnet" {
  source = "../../Modules/Azure_Subnet"

}

module "azurerm_public_ip" {
  source = "../../Modules/Azure_Public_ip"

}

module "azurerm_virtual_machine" {
  source = "../../Modules/Azure_linux_vm"

}