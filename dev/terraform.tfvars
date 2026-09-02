rg = {
  rg01 = {
    name     = "bulbul"
    location = "japan east"
  }
}
  stg = {
    stg01 = {
      name                = "mannus001"
      resource_group_name = "bulbul"
      location            = "Japan east"
      account_tier        = "Standard"
      account_replication_type = "GRS"
    }
  }

vnet = {
  vnet01 = {
    name                = "vnet01"
    location             = "japan east"
    resource_group_name = "bulbul"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet01 = {
    name                 = "subnet01"
    resource_group_name  = "bulbul"
    virtaul_network = "vnet01"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
public_ip = {
  publicp01 = {
    name                = "public_ip01"
    resource_group_name = "bulbul"
    location            = "Japan east"
    allocation_method   = "Static"
  }
}
vm = {
  vm01 = {
    nic_name             = "frontend_vm-nic"
    location             = "japan east"
    resource_group_name  = "bulbul"
    nic_subnet_name      = "subnet01"
    nic_virtual_network = "vnet01"
    nic_pip_name         = "public_ip01"
    vm_name              = "shailendra"
    vm_size              = "Standard_B1ms"
    admin_user_name      = "singh"
    admin_password       = " baladeeh@1234"
  }
}