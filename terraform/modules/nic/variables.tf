variable "network_interface_name" {
  description = "NIC name"
}

variable "location" {
  description = "Resource Group Location"
}

variable "resource_group_name" {
  description = "Resource group name"
}

variable "network_interface_ip_config_name" {
  description = "NIC IP configuration name"
}

variable "network_interface_ip_config_subnet_id" {
  description = "Subnet ID that needs this NIC"
}

variable "network_interface_private_ip_address_allocation" {
  description = "Dynamic / Static"
}
