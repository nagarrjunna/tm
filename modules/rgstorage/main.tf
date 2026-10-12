resource "azurerm_resource_group" "example1" {
  name     = var.st_rg
  location = var.st_region
}

resource "azurerm_storage_account" "example2" {
  name                     = var.st_name
  resource_group_name      = azurerm_resource_group.example1.name
  location                 = azurerm_resource_group.example1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

variable "st_rg" {}
variable "st_region" {}
variable "st_name" {}