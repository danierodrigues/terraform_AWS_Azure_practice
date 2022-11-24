resource "azurerm_network_interface" "ni_cso" {
  count               = 2
  name                = "acctni${count.index}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "testConfiguration"
    subnet_id                     = azurerm_subnet.subnet_cso.id
    private_ip_address_allocation = "dynamic"
  }
}