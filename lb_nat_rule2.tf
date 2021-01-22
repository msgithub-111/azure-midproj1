resource "azurerm_lb_rule" "lbnatrule2" {
    resource_group_name = azurerm_resource_group.user23rg.name
    loadbalancer_id = azurerm_lb.user23lb2.id
    name = "http"
    protocol = "Tcp"
    frontend_port = 80
    backend_port = 80
    backend_address_pool_id = azurerm_lb_backend_address_pool.user23beapool2.id
    frontend_ip_configuration_name = var.pip2
    probe_id = azurerm_lb_probe.user23-lb-probe2.id
}
