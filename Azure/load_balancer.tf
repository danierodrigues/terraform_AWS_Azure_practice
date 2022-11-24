resource "azurerm_lb" "lb_cso" {
  name                = "loadBalancer"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  frontend_ip_configuration {
    name                 = "publicIPAddress"
    public_ip_address_id = azurerm_public_ip.public_ip_cso.id
  }
}

resource "azurerm_lb_backend_address_pool" "pool_cso" {
    resource_group_name = azurerm_resource_group.rg.name
  loadbalancer_id = azurerm_lb.lb_cso.id
  name            = "BackEndAddressPool"
}