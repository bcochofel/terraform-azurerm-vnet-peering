# terraform-azurerm-vnet-peering

AzureRM vNet Peering

## Usage

```hcl:examples/basic/main.tf
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
