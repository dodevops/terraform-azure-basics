# Basic ressources for Azure

## Introduction

This module manages very basic resources for Azure. These resources are included:

* The resource group
* Deletion lock on resource group level
* Proximity placement groups

## Usage

Instantiate the module by calling it from Terraform like this:

```hcl
module "azure-basics" {
  source  = "dodevops/basics/azure"
  version = "<version>"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

The following providers are used by this module:

- azurerm

## Modules

No modules.

## Resources

The following resources are used by this module:

- [azurerm_management_lock.resource-group-level](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_lock) (resource)
- [azurerm_proximity_placement_group.ppg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/proximity_placement_group) (resource)
- [azurerm_resource_group.azure-resource-group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) (resource)

## Required Inputs

The following input variables are required:

### location

Description: The azure location used for azure

Type: `string`

### project

Description: Three letter project key

Type: `string`

### stage

Description: Stage for this ressource group

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### lock

Description: Lock ressource group for deletion

Type: `bool`

Default: `true`

### manage\_proximity\_placement\_group

Description: Manage a proximity placement group for the resource group

Type: `bool`

Default: `true`

### tags

Description: Map of tags for the resources

Type: `map(any)`

Default: `{}`

## Outputs

The following outputs are exported:

### location

Description: The location input variable (can be used for dependency resolution)

### ppg\_id

Description: The ID of the generated proximity placement group

### resource\_group

Description: The name of the generated resource group
<!-- END_TF_DOCS -->

## Development

Use [terraform-docs](https://terraform-docs.io/) to generate the API documentation by running

    terraform fmt .
    terraform-docs .
