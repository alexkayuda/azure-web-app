variable "location" {
  description = "Region name where resources will be created"
}

variable "environment" {
  description = "Environment"
}

variable "resource_group_name" {
  description = "Resource group name"
}

#################################################################################### 
variable "virtual_network_name" {
  description = "Virtual network name"
}

variable "virtual_network_address_space" {
  type        = list(any)
  description = "Virtual Network - CIDR Block"
}

####################################################################################
variable "subnet-1_name" {
  description = "Subnet name"
}

variable "subnet-1_address_prefixes" {
  type        = list(any)
  description = "Subnet - CIDR Block"
}

####################################################################################
variable "subnet-2_name" {
  description = "Subnet name"
}

variable "subnet-2_address_prefixes" {
  type        = list(any)
  description = "Subnet - CIDR Block"
}

####################################################################################
variable "security_group_name" {
  description = "SG name"
}

####################################################################################
variable "security_group_rule_allow_http_name" {
  description = "SG Rule name"
}

variable "security_group_rule_allow_http_priority" {
  type        = number
  description = "Rule Priority"
}

variable "security_group_rule_allow_http_direction" {
  type        = string
  description = "Inbound/Outbound"
}

variable "security_group_rule_allow_http_access" {
  type        = string
  description = "Allow/Deny"
}

variable "security_group_rule_allow_http_protocol" {
  type        = string
  description = "Protocol"
}

variable "security_group_rule_allow_http_source_port_range" {
  type        = string
  description = "Protocol"
}

variable "security_group_rule_allow_http_destination_port_range" {
  type        = string
  description = "Protocol"
}

variable "security_group_rule_allow_http_source_address_prefix" {
  type        = string
  description = "Source Prefix"
}

variable "security_group_rule_allow_http_destination_address_prefix" {
  type        = string
  description = "Destination Prefix"
}

####################################################################################
variable "security_group_rule_allow_ssh_name" {
  description = "SG Rule name"
}

variable "security_group_rule_allow_ssh_priority" {
  type        = number
  description = "Rule Priority"
}

variable "security_group_rule_allow_ssh_direction" {
  type        = string
  description = "Inbound/Outbound"
}

variable "security_group_rule_allow_ssh_access" {
  type        = string
  description = "Allow/Deny"
}

variable "security_group_rule_allow_ssh_protocol" {
  type        = string
  description = "Protocol"
}

variable "security_group_rule_allow_ssh_source_port_range" {
  type        = string
  description = "Protocol"
}

variable "security_group_rule_allow_ssh_destination_port_range" {
  type        = string
  description = "Protocol"
}

variable "security_group_rule_allow_ssh_source_address_prefix" {
  type        = string
  description = "Source Prefix"
}

variable "security_group_rule_allow_ssh_destination_address_prefix" {
  type        = string
  description = "Destination Prefix"
}
