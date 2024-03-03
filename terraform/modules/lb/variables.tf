variable "lb_name" {
  description = "SG name"
}

variable "location" {
  description = "Resource Group Location"
}

variable "resource_group_name" {
  description = "Resource group name"
}

variable "lb_sku" {
  description = "SKUs - Basic, Standard, and Gateway"
}

variable "lb_sku_tier" {
  description = "Tier - Regional or Global"
}

variable "lb_frontend_ip_config" {
  description = "value"
}

variable "lb_public_ip_name" {
  description = "Name for a Public IP of a Load Balancer"
}

variable "lb_public_ip_allocation_method" {
  description = "Static or Dynamic IP?"
}

variable "lb_backend_address_pool_name" {
  description = "Name for a Backend Config of a Load Balancer"
}

variable "lb_probe_name" {
  description = "Name for a Load Balancer probe"
}

variable "lb_probe_protocol" {
  description = "Protocol used by Load Balancer to perform a Health Check"
}

variable "lb_probe_port" {
  description = "Port used by Load Balancer to perform a Health Check"
}
