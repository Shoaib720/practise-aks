resource "azurerm_kubernetes_cluster" "aks" {
  name                = "practise-cluster-${var.random_int}"
  location            = var.location
  resource_group_name = var.rg
  dns_prefix          = "practisecluster"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
    os_disk_size_gb = 30
    enable_auto_scaling = true
    min_count = 1
    max_count = 3
    vnet_subnet_id = var.vnet_subnet_id
  }

  kubernetes_version = "1.22.6"

  azure_active_directory_role_based_access_control {
    azure_rbac_enabled = true
    managed = true
    admin_group_object_ids = var.admin_group_object_ids
  }   

  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
    service_cidr = var.service_cidr
    dns_service_ip = var.dns_service_ip
    docker_bridge_cidr = var.docker_bridge_cidr
  }

  key_vault_secrets_provider {
    secret_rotation_enabled = false
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Test"
  }
}