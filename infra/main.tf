
terraform {
  required_version = ">= 1.17.1"

  cloud {

    organization = "Polymtl-Cyber-CR460_Dev01"

    workspaces {
      name = "Juste-Dongo-CR460-Devoir01-A26"
    }
  }
}