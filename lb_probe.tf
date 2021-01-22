resource "azurerm_lb_probe" "user23-lb-probe" {
    resource_group_name = azurerm_resource_group.user23rg.name
    loadbalancer_id = azurerm_lb.user23lb.id
    name = "http-probe"
    protocol = "http"
    request_path = "/"
    port = 80
}
