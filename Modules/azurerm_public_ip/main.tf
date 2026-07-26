variable "pip" {}

resource "azurerm_public_ip" "publicip" {
  for_each            = var.pip
  name                = each.value.public_ip_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method
  sku                 = lookup(each.value, "sku", "Basic")
}