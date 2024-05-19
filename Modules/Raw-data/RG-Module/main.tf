resource "azurerm_resource_group" "RG1" {
    for_each = var.rgs_map
  name     = each.value.name
  location = each.value.location
}