output "peer_src_id" {
  value = azurerm_virtual_network_peering.src.id
}

output "peer_dst_id" {
  value = azurerm_virtual_network_peering.dst.id
}
