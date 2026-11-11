
resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-demo"
  location = "Central India"

  tags = {
    Environment = "Development"
    Project     = "Azure-Terraform"
    ManagedBy   = "Terraform"
  }
}
