module "rg" {
  source = "../modules/rg"
  rg_name = var.rg
}

module "vnet" {
  source = "../modules/vnet"
  vnet_name = var.vnet 
  rg = module.rg.rg-output
}

