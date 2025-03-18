output "storage_account_id" {
  description = "The ID of the Storage Account"
  value       = azurerm_storage_account.this.id
}

output "storage_account_primary_web_endpoint" {
  description = "The primary web endpoint of the Storage Account"
  value       = azurerm_storage_account.this.primary_web_endpoint
}
