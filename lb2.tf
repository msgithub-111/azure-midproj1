resource "azurerm_lb" "user23lb2" {
  name                    = var.lb2
  location                = azurerm_resource_group.user23rg.location 
  resource_group_name     = azurerm_resource_group.user23rg.name
  
  frontend_ip_configuration {
    name                  = var.pip2
    public_ip_address_id   = azurerm_public_ip.user23pip2.id
  }
}
