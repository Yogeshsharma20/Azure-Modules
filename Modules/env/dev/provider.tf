terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.101.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-crime_master-gogo"  
    storage_account_name = "yogiiistg01"                      
    container_name       = "tfstate"                      
  }
}

    