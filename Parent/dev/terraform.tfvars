resource-group = {
  "aawcz-d-eus-rg" = "EastUs"
}

azure-virtual-network = {
  vnet1 = {
    vnet_name = "aawcz-d-eus-vnet01"
    rg_name = "aawcz-d-eus-rg"
    location ="EastUs"
    address_space = ["10.0.0.0/16"]
  }
}

azure-subnet = {
  snet1 = {
    snet_name = "aawcz-d-eus-snet-frontend"
    rg_name = "aawcz-d-eus-rg"
    vnet_name = "aawcz-d-eus-vnet01"
    address_prefixes = ["10.0.1.0/24"]
  }
  snet2 = {
    snet_name = "aawcz-d-eus-snet-backend"
    rg_name = "aawcz-d-eus-rg"
    vnet_name = "aawcz-d-eus-vnet01"
    address_prefixes = ["10.0.2.0/24"]
  }
}