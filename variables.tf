variable "rg_name" {
  type = string
  description = "Name of the resource group"
}

variable "location" {
  type = string
  description = "Regions name"
}

variable "admin_group_object_ids" {
  type = list(string)
  description = "List of the admin group ids"
}