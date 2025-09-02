resource "azurerm_virtual_network" "vnet-blk" {
  for_each = var.vnet_name
  name = each.value.name
  location = var.rg[each.value.rgkey].location
  resource_group_name = var.rg[each.value.rgkey].name
  address_space = each.value.address_space

}

