variable "virtual_network_name" {
  description = "Virtual Network name"
}

variable "virtual_network_address_space" {
  type        = list(any)
  description = "Virtual Network - CIDR Block"
}

variable "virtual_network_location" {
  description = "Virtual Network location. Reference to the Resouce Group Location"
}

variable "resource_group_name" {
  description = "Resource Group name"
}
