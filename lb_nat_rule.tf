resource "azurerm_lb_rule" "lbnatrule" {
    resource_group_name = azurerm_resource_group.user23rg.name
    loadbalancer_id = azurerm_lb.user23lb.id
    name = "http"
    protocol = "Tcp"
    frontend_port = 80
    backend_port = 80
    backend_address_pool_id = azurerm_lb_backend_address_pool.user23beapool.id
    frontend_ip_configuration_name = var.pip
    probe_id = azurerm_lb_probe.user23-lb-probe.id
}
