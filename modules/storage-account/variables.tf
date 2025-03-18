variable "name" {
  description = "The name of the Storage Account (must be globally unique, lowercase, 3-24 characters)"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the Storage Account will be created"
  type        = string
}

variable "location" {
  description = "The Azure location for the Storage Account"
  type        = string
}

variable "environment" {
  description = "Specifies the environment for the storage account"
  type        = string
  default     = "dev"
}


variable "owner" {
  description = "Specifies the owner of the resource"
  type        = string
}
