resource "Azurerm_subnet" subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }