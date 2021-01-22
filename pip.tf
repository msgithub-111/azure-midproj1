resource "azurerm_public_ip" "user23pip" {  
name                = var.pip 
location            = azurerm_resource_group.user23rg.location
resource_group_name = azurerm_resource_group.user23rg.name
allocation_method   = "Static"  
domain_name_label   = azurerm_resource_group.user23rg.name    
	
	tags = {    
		environment = "staging"  
	}

}
