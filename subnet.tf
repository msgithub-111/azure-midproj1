resource "azurerm_subnet" "user23subnet1" {
    name = var.subnet
    resource_group_name	= azurerm_resource_group.user23rg.name
    virtual_network_name = azurerm_virtual_network.user23vnet.name
    address_prefixes = ["23.0.1.0/24"]
}
