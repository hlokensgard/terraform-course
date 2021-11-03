variable "resource_group_name" {
    description = "Name for the resource group"
    type = string 
    default = "my_first_resource_group"
}

variable "location" {
    description = "Location for the resources"
    type = string
    default = "westeurope"
}