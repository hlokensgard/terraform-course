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