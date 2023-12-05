variable "resource_group_name" {
  description = "Resource group name"
}

variable "security_group_name" {
  description = "Security Group name"
}

variable "security_group_rule_name" {
  description = "SG Rule name"
}

variable "security_group_rule_priority" {
  type        = number
  description = "Rule Priority"
}

variable "security_group_rule_direction" {
  type        = string
  description = "Inbound/Outbound"
}

variable "security_group_rule_access" {
  type        = string
  description = "Allow/Deny"
}

variable "security_group_rule_protocol" {
  type        = string
  description = "Protocol"
}

variable "security_group_rule_source_port_range" {
  type        = string
  description = "Protocol"
}

variable "security_group_rule_destination_port_range" {
  type        = string
  description = "Protocol"
}

variable "security_group_rule_source_address_prefix" {
  type        = string
  description = "Source Prefix"
}

variable "security_group_rule_destination_address_prefix" {
  type        = string
  description = "Destination Prefix"
}
