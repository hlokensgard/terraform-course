terraform {
    required_version = "~>1.0.0"
    required_providers {
        azurerm={
            version = "~>2.0"
            source  = "hashicorp/azurerm"
        }
    }
}