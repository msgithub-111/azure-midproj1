resource "azurerm_virtual_network" "user23vnet" {
	name 			= var.vnet
	address_space 		= ["23.0.0.0/16"]
	location 			= azurerm_resource_group.user23rg.location
	resource_group_name	= azurerm_resource_group.user23rg.name
}
