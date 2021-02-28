resource "azurerm_virtual_network_peering" "src" {
  name                      = var.peer_src_name
  remote_virtual_network_id = var.vnet_dst_id
  resource_group_name       = var.vnet_src_rg
  virtual_network_name      = var.vnet_src_name
}

resource "azurerm_virtual_network_peering" "dst" {
  name                      = var.peer_dst_name
  remote_virtual_network_id = var.vnet_src_id
  resource_group_name       = var.vnet_dst_rg
  virtual_network_name      = var.vnet_dst_name
}
