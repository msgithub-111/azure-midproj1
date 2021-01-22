resource "azurerm_resource_group" "user23rg" {
    name     = var.rg
    location = var.loc

    tags = {
        environment = "Terraform Demo"
    }
}
