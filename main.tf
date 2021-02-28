# vnet 1 peer to vnet 2
resource "azurerm_virtual_network_peering" "peer1to2" {
  name                      = "peer1to2"
  remote_virtual_network_id = var.vnet2_id
  resource_group_name       = var.vnet1_rg
  virtual_network_name      = var.vnet1_name
}

# vnet 2 peer to vnet 1
resource "azurerm_virtual_network_peering" "peer2to1" {
  name                      = "peer2to1"
  remote_virtual_network_id = var.vnet1_id
  resource_group_name       = var.vnet2_rg
  virtual_network_name      = var.vnet2_name
}
