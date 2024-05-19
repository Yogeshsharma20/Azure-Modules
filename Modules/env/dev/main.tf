
module "resource_groups" {
  source  = "../../terraform-raw-data/RG-Module"
  rgs_map = var.rgs_map
}

module "virtual_network" {
  source                  = "../../terraform-raw-data/vnet-Module"
  azurerm_virtual_network = var.azurerm_virtual_network
  depends_on              = [module.resource_groups]
}

module "subnet_modules" {
  source     = "../../terraform-raw-data/subnet-Modules"
  subnet_map = var.subnet_map

}



module "linux_vms" {
  source     = "../../terraform-raw-data/VM-Modules"
  linux_vms  = var.linux_vms
  depends_on = [module.subnet_modules, module.resource_groups, module.virtual_network]

}
