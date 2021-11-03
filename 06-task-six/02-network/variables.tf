variable "vnet_name" {
    description = "Name of the virtual network"
    type = string
}

variable "subnets" {
    description = "Name of the subnet"
    type = map(object({
        name = string
        address_space = list(string)
    }))
}

variable "vnet_addres_space" {
    description = "The address space for the virtuall network"
    type = list(string)
}

variable "resource_group_name" {
    description = "Name for the resource group"
    type = string 
    default = "my_first_resource_group"
}