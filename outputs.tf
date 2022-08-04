output "resource_group" {
  description = "The name of the generated resource group"
  value       = azurerm_resource_group.azure-resource-group.name
}

output "location" {
  description = "The location input variable (can be used for dependency resolution)"
  value       = var.location
}

output "ppg_id" {
  description = "The ID of the generated proximity placement group"
  value       = var.manage_proximity_placement_group ? azurerm_proximity_placement_group.ppg[0].id : ""
}

output "lock_id" {
  description = "The ID of the managed resource group lock"
  value       = var.lock ? azurerm_management_lock.resource-group-level.0.id : ""
}
