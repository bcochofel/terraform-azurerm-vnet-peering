variable "peer_src_name" {
  description = "Peer name for source to destination."
  type        = string
}

variable "vnet_src_rg" {
  description = "Virtual Network source resource group."
  type        = string
}

variable "vnet_src_name" {
  description = "Virtual Network source name."
  type        = string
}

variable "vnet_src_id" {
  description = "Virtual Network source id."
  type        = string
}

variable "peer_dst_name" {
  description = "Peer name for destination to source."
  type        = string
}

variable "vnet_dst_rg" {
  description = "Virtual Network destination resource group."
  type        = string
}

variable "vnet_dst_name" {
  description = "Virtual Network destination name."
  type        = string
}

variable "vnet_dst_id" {
  description = "Virtual Network destination id."
  type        = string
}
