provider "azurerm" {
    subscription_id = ""
    features {} # terraform needs this to configure the provider 
}

module "my_first_module" {
    source = ".//01-resource-group"
    resource_group_name = "testing"
    location = "westeurope"
}






module "my_second_module" {
    source = ".//02-network"
    resource_group_name = "testing"
    vnet_name = "my_first_vnet"
    subnet_name = "my_first_subnet"
    vnet_addres_space = [ "10.0.0.0/16" ]
    subnet_addres_space = [ "10.0.0.0/24" ]
}