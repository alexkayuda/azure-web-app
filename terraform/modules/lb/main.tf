resource "azurerm_lb" "lb" {
  name                = var.lb_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.lb_sku
  sku_tier            = var.lb_sku_tier

  frontend_ip_configuration {
    name                 = var.lb_frontend_ip_config
    public_ip_address_id = azurerm_public_ip.lb_public_IP.id
  }
}

# Public IP Configuration for LB
resource "azurerm_public_ip" "lb_public_ip" {
  name                = var.lb_public_ip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.lb_public_ip_allocation_method
}

# Backend Config for LB
resource "azurerm_lb_backend_address_pool" "lb_backend" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = var.lb_backend_address_pool_name
}

# Associate Backend with LB itself
resource "azurerm_network_interface_backend_address_pool_association" "lb_backend_association" {
  network_interface_id    = azurerm_network_interface.network_interface_id
  ip_configuration_name   = azurerm_network_interface.example.ip_configuration[0].name
  backend_address_pool_id = azurerm_lb.example.backend_address_pool[0].id
}

resource "azurerm_lb_probe" "lb_probe" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = var.lb_probe_name
  protocol        = var.lb_probe_protocol
  port            = var.lb_probe_port
}

resource "azurerm_lb_rule" "example" {
  loadbalancer_id                = azurerm_lb.example.id
  name                           = "LBRule"
  protocol                       = "Tcp"
  frontend_port                  = 3389
  backend_port                   = 3389
  frontend_ip_configuration_name = "PublicIPAddress"
}

# # Associate Backend with LB itself
# resource "azurerm_network_interface_backend_address_pool_association" "lb_backend_association" {
#   network_interface_id    = azurerm_network_interface.network_interface_id
#   ip_configuration_name   = azurerm_network_interface.example.ip_configuration[0].name
#   backend_address_pool_id = azurerm_lb.example.backend_address_pool[0].id
# }
