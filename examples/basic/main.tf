provider "azurerm" {
  features {}
}

module "rg1" {
  source  = "bcochofel/resource-group/azurerm"
  version = "1.4.0"

  name     = "rg-vnet1-basic-example"
  location = "North Europe"
}

module "vnet1" {
  source  = "bcochofel/virtual-network/azurerm"
  version = "1.2.1"

  resource_group_name = module.rg1.name
  name                = "vnet1-basic-example"
  address_space       = ["10.1.0.0/16"]

  depends_on = [module.rg1]
}

module "rg2" {
  source  = "bcochofel/resource-group/azurerm"
  version = "1.4.0"

  name     = "rg-vnet2-basic-example"
  location = "West Europe"
}

module "vnet2" {
  source  = "bcochofel/virtual-network/azurerm"
  version = "1.2.1"

  resource_group_name = module.rg2.name
  name                = "vnet2-basic-example"
  address_space       = ["10.2.0.0/16"]

  depends_on = [module.rg2]
}

module "vnet-peering" {
  source = "../.."

  vnet_src_rg = module.rg1.name
  vnet_dst_rg = module.rg2.name

  vnet_src_name = module.vnet1.name
  vnet_src_id   = module.vnet1.id

  vnet_dst_name = module.vnet2.name
  vnet_dst_id   = module.vnet2.id

  peer_src_name = format("peer-%s2%s", module.vnet1.name, module.vnet2.name)
  peer_dst_name = format("peer-%s2%s", module.vnet2.name, module.vnet1.name)
}
