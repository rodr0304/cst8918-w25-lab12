terraform {
  backend "azurerm" {
    resource_group_name  = "RODR0304-githubactions-rg"
    storage_account_name = "rodr0304githubactions"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
    use_oidc             = true
  }
}