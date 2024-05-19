linux_vms = {
  vm1 = {
    pip_name            = "Public-ip"
    resource_group_name = "rg-crime_master-gogo"
    location            = "East US"
    nic_name            = "frontend-nic"
    vm_name             = "Frontend-machine"
    vm_size             = "Standard_DS1_v2"
    vm_username         = "devopsinsider"
    vm_password         = "Admin1234567"
  }
  
}
