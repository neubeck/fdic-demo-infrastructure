resource "azurerm_resource_group" "fdic_demo" {
  name     = "rg-fdic-demo-dev"
  location = "eastus"
  tags = {
    environment = "dev"
    owner = "joel.neubeck@neudesic.com"
  }
}

module "storage_account" {
  source              = "../../modules/storage-account"
  name                = "stfdicdemodevstaticsite"       # Ensure the name meets Azure requirements
  resource_group_name = azurerm_resource_group.fdic_demo.name
  location            = azurerm_resource_group.fdic_demo.location
  environment         = "dev"
  owner               = "joel.neubeck@neudesic.com"
}

module "app_insights" {
  source              = "../../modules/appinsights"
  name                = "appi-fdic-demo-dev-services"      # Must be unique across your subscription
  resource_group_name = azurerm_resource_group.fdic_demo.name
  location            = azurerm_resource_group.fdic_demo.location
  environment         = "dev"
  owner               = "joel.neubeck@neudesic.com"
}
