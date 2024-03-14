module "RG" {
  source = "../../Module/Resouregroup"
  vkrg   = var.vkrg

}
module "Vnet" {
  depends_on = [module.RG]
  source     = "../../Module/Vnet"
  vkvnet     = var.vkvnet

}
module "Subnet" {
  depends_on = [module.Vnet, module.RG]
  source     = "../../Module/Subnet"
  subnet     = var.subnet

}
module "NSG" {
  depends_on     = [module.RG, module.Vnet, module.Subnet]
  source         = "../../Module/NSG"
  nsg            = var.nsg
  security_rules = var.security_rules

}
module "PublicIP" {
  depends_on = [module.RG, module.Vnet, module.Subnet, module.NSG]
  source     = "../../Module/PIP"
  pip        = var.pip

}
module "storage" {
  depends_on = [module.RG, module.Vnet, module.Subnet, module.NSG, module.PublicIP]
  source     = "../../Module/Storageaccount"
  vksa       = var.vksa

}
module "Container" {
  depends_on = [module.RG, module.Vnet, module.Subnet, module.NSG, module.PublicIP, module.storage]
  source     = "../../Module/Container"
  vkconst    = var.vkconst

}
module "Bastion" {
  depends_on = [module.RG, module.Vnet, module.Subnet, module.NSG, module.PublicIP, module.storage, module.Container]
  source     = "../../Module/Bastion"
  bastion    = var.bastion
}
module "keyvault" {
  depends_on = [module.RG, module.Vnet, module.Subnet, module.NSG, module.PublicIP, module.storage, module.Container, module.Bastion]
  source     = "../../Module/Azurekeyvault"
  keyvault   = var.keyvault

}
