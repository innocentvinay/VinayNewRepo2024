module "rg2" {
  source = "../../Module/Resouregroup"
  vkrg   = var.vkrg

}
module "vinay" {
  depends_on = [module.rg2]
  source     = "../../Module/Vnet"
  vkvnet     = var.vkvnet

}