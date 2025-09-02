resource "azurerm_public_ip" "pip-blk" {
  for_each = var.pip_name
  name = each.value.name
  resource_group_name = var.rg[each.value.rgkey].name
  location = var.rg[each.value.rgkey].location
  allocation_method = "Static"

}

