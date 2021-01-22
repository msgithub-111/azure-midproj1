resource "azurerm_lb_backend_address_pool" "user23beapool" {
    name = var.beapool
    resource_group_name = azurerm_resource_group.user23rg.name
    loadbalancer_id     = azurerm_lb.user23lb.id
}
