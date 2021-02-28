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
| vnet1\_id | Virtual Network #1 id. | `string` | n/a | yes |
| vnet1\_name | Virtual Network #1 name. | `string` | n/a | yes |
| vnet1\_rg | Virtual Network #1 resource group. | `string` | n/a | yes |
| vnet2\_id | Virtual Network #2 id. | `string` | n/a | yes |
| vnet2\_name | Virtual Network #2 name. | `string` | n/a | yes |
| vnet2\_rg | Virtual Network #2 resource group. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| peer1to2\_id | n/a |
| peer2to1\_id | n/a |
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
