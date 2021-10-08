variable "location" {
  type        = string
  description = "The azure location used for azure"
}

variable "project" {
  type        = string
  description = "Three letter project key"
}

variable "stage" {
  type        = string
  description = "Stage for this ressource group"
}

variable "tags" {
  type        = map(any)
  description = "Map of tags for the resources"
  default     = {}
}

variable "lock" {
  type        = bool
  description = "Lock ressource group for deletion"
  default     = true
}

variable "manage_proximity_placement_group" {
  type        = bool
  description = "Manage a proximity placement group for the resource group"
  default     = true
}