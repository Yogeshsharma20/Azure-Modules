data "azurerm_subnet" "frontend_subnet" {
  for_each             = var.linux_vms
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_key_vault_secret" "username" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_key_vault_secret" "password" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}


data "azurerm_key_vault" "keyvault" {
  name                = "yogi-keyvault"
  resource_group_name = "rg-crime_master-gogo"

}