variable "subnet_name" {
  description = "Subnet name"
}

variable "resource_group_name" {
  description = "Resource group name"
}

variable "virtual_network_name" {
  description = "Virtual Network name"
}

variable "subnet_address_prefixes" {
  type        = list(any)
  description = "Subnet - CIDR Block"
}
