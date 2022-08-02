provider "azurerm" {
    subscription_id = ""
    features {} # terraform needs this to configure the provider 
}

resource "azurerm_resource_group" "my_resource_group" {
    name = var.resource_group_name
    location = var.location
    tags = {
        deployment = "terraform"
    }
}