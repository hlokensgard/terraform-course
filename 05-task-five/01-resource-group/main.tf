provider "azurerm" {
    subscription_id = "83903753-3274-4d41-b1a8-635abfe558da"
    features {} # terraform needs this to configure the provider 
}

resource "azurerm_resource_group" "my_resource_group" {
    name = var.resource_group_name
    location = var.location
    tags = {
        deployment = "terraform"
    }
}