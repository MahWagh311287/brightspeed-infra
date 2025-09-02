resource "azurerm_subnet" "snet-blk" {
  for_each = var.subnets_name
  name = each.value.name
  virtual_network_name = var.vnet[each.value.vnetkey].name
  resource_group_name = var.rg[each.value.rgkey].name
  address_prefixes = each.value.address_prefixes
}

