resource "azurerm_network_interface" "nic-blk" {
  for_each = var.nic_name
  name = each.value.name
  location = var.rg[each.value.rgkey].location
  resource_group_name = var.rg[each.value.rgkey].name
  ip_configuration {
    name = "internal"
    subnet_id = var.snet[each.value.snetkey].id
    private_ip_address_allocation = "Dynamic"
    # public_ip_address_id = var.pip[each.value.pipkey].id
  }
}

