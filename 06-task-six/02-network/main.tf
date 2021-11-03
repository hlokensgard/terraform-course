provider "azurerm" {
    subscription_id = "83903753-3274-4d41-b1a8-635abfe558da"
    features {} # terraform needs this to configure the provider 
}

resource "azurerm_virtual_network" "my_first_vnet" {
    name = var.vnet_name
    location = data.azurerm_resource_group.my_resource_group.location
    resource_group_name = data.azurerm_resource_group.my_resource_group.name
    address_space = var.vnet_addres_space
    tags = {
        deployment = "terraform"
    }
}

resource "azurerm_subnet" "my_first_subnet" {
    for_each = var.subnets
    name = each.value.name
    resource_group_name = data.azurerm_resource_group.my_resource_group.name
    virtual_network_name = azurerm_virtual_network.my_first_vnet.name
    address_prefixes = each.value.address_space
}