resource "Azurerm_subnet" subnet {
    name             = var.Azure_Subnet_name
    address_prefixes = ["10.0.1.0/24"]
  }