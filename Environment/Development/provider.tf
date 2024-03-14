terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.90.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Havenlook"
    storage_account_name = "havenstorage12"
    container_name       = "vinaycontainer"
    key                  = "prod/terraform.tfstate"
  }
}

provider "azurerm" {
  features {
  }
  skip_provider_registration = true
}
