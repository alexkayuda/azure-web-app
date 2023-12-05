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

variable "subnet_name" {
  description = "Subnet name"
}

variable "subnet_address_prefixes" {
  type        = list(any)
  description = "Subnet - CIDR Block"
}

variable "security_group_name" {
  description = "SG name"
}
