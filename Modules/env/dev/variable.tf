variable "rgs_map" {
  description = "value"
  type        = map(any)
}

variable "azurerm_virtual_network" {
  type = map(any)

}

variable "subnet_map" {
  type = map(any)
}
variable "linux_vms" {}