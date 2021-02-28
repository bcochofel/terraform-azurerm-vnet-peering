# terraform-azurerm-vnet-peering

AzureRM vNet Peering

## Usage

```hcl:examples/basic/main.tf
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

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |
| azurerm | >= 2.41.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.41.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [azurerm_virtual_network_peering](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| peer\_dst\_name | Peer name for destination to source. | `string` | n/a | yes |
| peer\_src\_name | Peer name for source to destination. | `string` | n/a | yes |
| vnet\_dst\_id | Virtual Network destination id. | `string` | n/a | yes |
| vnet\_dst\_name | Virtual Network destination name. | `string` | n/a | yes |
| vnet\_dst\_rg | Virtual Network destination resource group. | `string` | n/a | yes |
| vnet\_src\_id | Virtual Network source id. | `string` | n/a | yes |
| vnet\_src\_name | Virtual Network source name. | `string` | n/a | yes |
| vnet\_src\_rg | Virtual Network source resource group. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| peer\_dst\_id | n/a |
| peer\_src\_id | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Run tests

```bash
cd test/
go test -v
```

## pre-commit hooks

This repository uses [pre-commit](https://pre-commit.com/).

To install execute:

```bash
pre-commit install --install-hooks -t commit-msg
```

To run the hooks you need to install:

* [terraform](https://github.com/hashicorp/terraform)
* [terraform-docs](https://github.com/terraform-docs/terraform-docs)
* [TFLint](https://github.com/terraform-linters/tflint)
* [TFSec](https://github.com/tfsec/tfsec)
* [checkov](https://github.com/bridgecrewio/checkov)

## References
