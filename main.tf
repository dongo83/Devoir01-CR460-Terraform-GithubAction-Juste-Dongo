terraform {
  required_version = "1.17.1"

  cloud {
    
    organization = "Polymtl-Cyber-CR460_Dev01"

    workspaces {
      name = "Juste-Dongo-CR460-Devoir01-A26"
    }
  }
}
# Configuration du fournisseur Azure
provider "azurerm" {
  features {}
}

# Récupération des informations de l'abonnement Azure
data "azurerm_subscription" "current" {}

# Affichage du nom de l'abonnement Azure
output "subscription_name" {
  value = data.azurerm_subscription.current.display_name
}