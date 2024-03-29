provider "azurerm" {
    subscription_id = ""
    features {} # terraform needs this to configure the provider 
}

resource "azurerm_resource_group" "my_resource_group" {
    name = "my_first_resource_group"
    location = "westeurope"
    tags = {
        deployment = "terraform"
    }
}

resource "azurerm_virtual_network" "my_first_vnet" {
    name = "my_first_vnet"
    location = azurerm_resource_group.my_resource_group.location
    resource_group_name = azurerm_resource_group.my_resource_group.name
    address_space = [ "10.0.0.0/16" ]
    tags = {
        deployment = "terraform"
    }
}

resource "azurerm_subnet" "my_first_subnet" {
    name = "my_first_subnet"
    resource_group_name = azurerm_resource_group.my_resource_group.name
    virtual_network_name = azurerm_virtual_network.my_first_vnet.name
    address_prefixes = [ "10.0.0.1/24" ]
}
