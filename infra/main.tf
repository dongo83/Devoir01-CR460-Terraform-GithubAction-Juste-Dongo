
terraform {
  required_version = ">= 1.17.1"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
  }

  cloud {
    organization = "Polymtl-Cyber-CR460_Dev01"

    workspaces {
      name = "Juste-Dongo-CR460-Devoir01-A26"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_subscription" "actuel" {}

output "abonnement_azure" {
  value = data.azurerm_subscription.actuel.display_name
}