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