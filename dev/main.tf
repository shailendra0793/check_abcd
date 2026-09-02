module "resource_group" {
  source = "../child_module/rg"
  rg     = var.rg
}
module "storage_account" {
  source     = "../child_module/storage_account"
  depends_on = [module.resource_group]
  stg        = var.stg
}
module "virtual_network" {
  source     = "../child_module/vnet"
  depends_on = [module.resource_group]
  vnet       = var.vnet
}
module "subnet" {
  source     = "../child_module/subnet"
  depends_on = [module.virtual_network]
  subnet     = var.subnet
}
module "public_ip" {
  source     = "../child_module/public_ip"
  depends_on = [module.resource_group]
  public_ip  = var.public_ip
}
module "virtual_machin" {
  source     = "../child_module/vm"
  depends_on = [module.resource_group, module.public_ip]
  vm         = var.vm
}
