resource "azurerm_virtual_network" "res_azurerm_virtual_network" {
  resource_group_name = var.rg_name
  address_space       = var.virtual_networks.address_space
  location            = var.rg_location
  name                = var.virtual_networks.name
}

resource "azurerm_subnet" "res_azurerm_subnet" {
  for_each = var.virtual_networks.subnets

  name                 = each.value.name
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.res_azurerm_virtual_network.name
  address_prefixes     = toset(each.value.address_prefixes)
  depends_on = [
    azurerm_virtual_network.res_azurerm_virtual_network
  ]
}