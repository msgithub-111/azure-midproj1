resource "azurerm_virtual_network_peering" "user23-vnpeer1" {
  name                      = "peer1to2"
  resource_group_name       = azurerm_resource_group.user23rg.name
  virtual_network_name      = azurerm_virtual_network.user23vnet.name
  remote_virtual_network_id = azurerm_virtual_network.user23vnet2.id
}

resource "azurerm_virtual_network_peering" "user23-vnpeer2" {
  name                      = "peer2to1"
  resource_group_name       = azurerm_resource_group.user23rg.name
  virtual_network_name      = azurerm_virtual_network.user23vnet2.name
  remote_virtual_network_id = azurerm_virtual_network.user23vnet.id
}
