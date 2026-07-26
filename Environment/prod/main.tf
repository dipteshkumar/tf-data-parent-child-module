module "resource_groups" {
  source = "../../Modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "virtual_network" {
  depends_on = [module.resource_groups]
  source     = "../../Modules/azurerm_virtual_network"
  vnets      = var.vnets
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../Modules/azurerm_subnet"
  snets      = var.snets
}

module "public_ip" {
  depends_on = [module.resource_groups]
  source     = "../../Modules/azurerm_public_ip"
  pip        = var.pip
}


module "virtual_machine" {
  depends_on = [module.subnet, module.public_ip]
  source     = "../../Modules/azurerm_virtual_machine"
  vms        = var.vms
}

module "bastion" {
  depends_on = [module.subnet, module.public_ip]
  source     = "../../Modules/azurerm_bastion_host"
  bastions   = var.bastions
}