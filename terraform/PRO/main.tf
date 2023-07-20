module "Networking" {
  source   = "../Modules/Networking"
  for_each = var.virtual_networks
  virtual_networks = each.value
  rg_name = data.azurerm_resource_group.res_azurerm_resource_group.name
  rg_location = data.azurerm_resource_group.res_azurerm_resource_group.location
}

/*module "StorageAccounts" {
  source   = "../Modules/StorageAccounts"
  for_each = var.storage_accounts
  storage_account = each.value
  rg_name = data.azurerm_resource_group.res_azurerm_resource_group.name
  rg_location = data.azurerm_resource_group.res_azurerm_resource_group.location
}*/