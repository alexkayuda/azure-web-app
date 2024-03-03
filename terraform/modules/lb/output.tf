output "lb_name" {
  value = azurerm_lb.lb.name
}

output "lb_backend_address_pool_id" {
  value = azurerm_lb_backend_address_pool.lb_backend.id
}

output "lb_backend_address_pool_name" {
  value = azurerm_lb_backend_address_pool.lb_backend.name
}
