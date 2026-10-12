resource "azurerm_resource_group" "myrg" {
  name = var.my_rg
  location = var.rg_location
  tags = var.rg_tags
}

resource "azurerm_virtual_network" "myvnet" {
  depends_on = [ azurerm_resource_group.myrg ]
  resource_group_name = azurerm_resource_group.myrg.name 
  location = azurerm_resource_group.myrg.location
  name = var.vnet_name
  address_space = [var.vnet_cidr]
}