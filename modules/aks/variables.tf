variable "random_int" {
  type = string
}

variable "rg" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_subnet_id" {
  type = string
}

variable "admin_group_object_ids" {
  type = list(string)
}

variable "service_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "dns_service_ip" {
  type = string
  default = "10.0.0.10"
}

variable "docker_bridge_cidr" {
  type = string
  default = "172.17.0.1/16"
}