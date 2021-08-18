# Add a resource group

resource "azurerm_resource_group" "azure-resource-group" {
  name     = "${lower(var.project)}${lower(var.stage)}resourcegroup"
  location = var.location
}

resource "azurerm_management_lock" "resource-group-level" {
  count      = var.lock ? 1 : 0
  name       = "prevent-deletion-at-RG-level"
  scope      = azurerm_resource_group.azure-resource-group.id
  lock_level = "CanNotDelete"
  notes      = "Prevent the accidental deletion of resources"
}

resource "azurerm_proximity_placement_group" "ppg" {
  count               = var.proximiy_placement_group ? 1 : 0
  location            = var.location
  name                = "${lower(var.project)}${lower(var.stage)}ppg"
  resource_group_name = azurerm_resource_group.azure-resource-group.name
}
