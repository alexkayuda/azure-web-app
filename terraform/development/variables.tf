variable "location" {
  description = "Region name where resources will be created"
}

variable "environment" {
  description = "Environment"
}

variable "resource_group_name" {
  description = "Resource group name"
}

variable "virtual_network_name" {
  description = "Virtual network name"
}

variable "virtual_network_address_space" {
  type        = list(any)
  description = "Virtual Network - CIDR Block"
}
