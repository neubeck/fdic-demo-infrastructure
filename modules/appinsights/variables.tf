variable "name" {
  description = "The name of the Application Insights resource"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where Application Insights will be deployed"
  type        = string
}

variable "location" {
  description = "The Azure location for Application Insights"
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