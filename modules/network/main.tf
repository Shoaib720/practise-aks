resource "azurerm_virtual_network" "vnet" {
  name = "vnet-practise-aks-${var.random_int}"
  location = var.location
  resource_group_name = var.rg
  address_space = var.address_space
}

resource "azurerm_subnet" "cluster_subnet" {
  name = "snet-practise-aks"
  resource_group_name = var.rg
  address_prefixes = var.address_prefixes
  virtual_network_name = azurerm_virtual_network.vnet.name
}