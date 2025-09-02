module "rg" {
  source = "../modules/rg"
  rg_name = var.rg
}

module "vnet" {
  source = "../modules/vnet"
  vnet_name = var.vnet 
  rg = module.rg.rg-output
  depends_on = [ module.rg ]
}

module "subnet" {
  source = "../modules/subnet"
  subnets_name = var.subnet
  vnet = module.vnet.vnet-output
  rg = module.rg.rg-output
  depends_on = [ module.rg, module.vnet ]
}


