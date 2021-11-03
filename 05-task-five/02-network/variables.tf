variable "vnet_name" {
    description = "Name of the virtual network"
    type = string
}

variable "subnet_name" {
    description = "Name of the subnet"
    type = string
}

variable "vnet_addres_space" {
    description = "The address space for the virtuall network"
    type = list(string)
}

variable "subnet_addres_space" {
    description = "The address space for the subnet"
    type = list(string)
}

variable "resource_group_name" {
    description = "Name for the resource group"
    type = string 
    default = "my_first_resource_group"
    validation {
      condition = length(var.resource_group_name)>8
      error_message = "The length of the resource group name needs to be longther then 8. "
    }
}