resource "azurerm_resource_group" "rg" {
  name     = "rg-practise-aks-cluster"
  location = "Central India"
}

module "random" {
  source = "./modules/random"
}

module "network" {
  source = "./modules/network"
  random_int = module.random.random_int
  rg = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
}

module "aks" {
  source = "./modules/aks"
  random_int = module.random.random_int
  rg = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  vnet_subnet_id = module.network.subnet_id
  admin_group_object_ids = var.admin_group_object_ids
}