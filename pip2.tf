resource "azurerm_public_ip" "user23pip2" {  
name                = var.pip2 
location            = azurerm_resource_group.user23rg.location
resource_group_name = azurerm_resource_group.user23rg.name
allocation_method   = "Static"  
domain_name_label   = "user23pip2"    
	
	tags = {    
		environment = "staging"  
	}

}
