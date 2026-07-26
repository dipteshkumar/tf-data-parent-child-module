rgs = {
  rg1 = {
    name     = "rgkumar"
    location = "Centralindia"
  }
  rg2 = {
    name     = "rgkumar1"
    location = "Centralindia"
  }
}


vnets = {
  vnet1 = {
    name                = "vnetkumar"
    resource_group_name = "rgkumar"
    location            = "Centralindia"
    address_space       = ["10.0.0.0/16"]
  }
}

snets = {
  subnet1 = {
    subnet_name          = "frontendsubnetkumar"
    resource_group_name  = "rgkumar"
    virtual_network_name = "vnetkumar"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet_name                 = "backendsubnetkumar"
    resource_group_name  = "rgkumar"
    virtual_network_name = "vnetkumar"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    subnet_name                 = "AzureBastionSubnet"
    resource_group_name  = "rgkumar"
    virtual_network_name = "vnetkumar"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

pip = {
  publicip1 = {
    public_ip_name      = "frontendpublicipkumar"
    resource_group_name = "rgkumar"
    location            = "Centralindia"
    allocation_method   = "Static"
  }
  publicip2 = {
    public_ip_name      = "backendpublicipkumar"
    resource_group_name = "rgkumar"
    location            = "Centralindia"
    allocation_method   = "Static"
  }
  publicip3 = {
    public_ip_name      = "bastionpublicipkumar"
    resource_group_name = "rgkumar"
    location            = "Centralindia"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}

vms = {
  vm1 = {
    nic_name            = "frontendnickumar"
    subnet_name         = "frontendsubnetkumar"
    virtual_network_name = "vnetkumar"
    public_ip_name     = "frontendpublicipkumar"
    vm_name             = "frontendvmkumar"
    resource_group_name = "rgkumar"
    location            = "Centralindia"
    vm_size             = "Standard_D4_v5"
    admin_username      = "adminuser"
    admin_password      = "Admin@12345"
  }
  vm2 = {
    nic_name            = "backendnickumar"
    subnet_name         = "backendsubnetkumar"
    virtual_network_name = "vnetkumar"
    public_ip_name     = "backendpublicipkumar"
    vm_name             = "backendvmkumar"
    resource_group_name = "rgkumar"
    location            = "Centralindia"
    vm_size             = "Standard_D4_v5"
    admin_username      = "adminuser"
    admin_password      = "Admin@12345"
  }
}

bastions = {
  bastion1 = {
    name                = "bastionkumar"
    location            = "Centralindia"
    resource_group_name = "rgkumar"
    subnet_name         = "AzureBastionSubnet"
    virtual_network_name = "vnetkumar"
    public_ip_name      = "bastionpublicipkumar"
  }
}