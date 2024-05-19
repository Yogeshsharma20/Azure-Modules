rgs_map = {
  rg1 = {
    name     = "rg-crime_master-gogo"
    location = "east us"
  }

}


azurerm_virtual_network = {
  yogesh = {
    name                        = "devops-vnet1"
    location                    = "east us"
    azurerm_resource_group_name = "rg-crime_master-gogo"
    address_space               = ["10.0.0.0/16"]

  }

}
subnet_map = {
  snet1 = {
    name                        = "frontend-subnet01"
    azurerm_resource_group_name = "rg-crime_master-gogo"
    virtual_network_name        = "devops-vnet1"
    address_prefixes            = ["10.0.1.0/24"]
  }
}


linux_vms = {
  vm1 = {
    pip_name             = "Public-ip"
    resource_group_name  = "rg-crime_master-gogo"
    subnet_name          = "frontend-subnet01"
    virtual_network_name = "devops-vnet1"
    location             = "East US"
    nic_name             = "frontend-nic"
    vm_name              = "Frontend-machine"
    vm_size              = "Standard_DS1_v2"
    vm_username          = "devopsinsider"
    vm_password          = "Admin1234567"
  }

}
