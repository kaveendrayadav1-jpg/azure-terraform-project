

resource "azurerm_postgresql_flexible_server" "postgres" {
  name                = "tf-postgres-demo-kaveendra"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  version                = "16"
  delegated_subnet_id    = azurerm_subnet.postgres_subnet.id
  private_dns_zone_id    = azurerm_private_dns_zone.postgres_dns.id

  administrator_login    = var.postgres_admin_username
  administrator_password = var.postgres_admin_password

  zone                   = "1"
  storage_mb             = 32768
  sku_name               = "B_Standard_B1ms"
  backup_retention_days  = 7

  public_network_access = "Disabled"

  depends_on = [
    azurerm_private_dns_zone_virtual_network_link.postgres_dns_link
  ]

  tags = {
    Environment = "Development"
    Project     = "Azure-Terraform"
  }
}

resource "azurerm_postgresql_flexible_server_database" "database" {
  name      = "waterproofing_db"
  server_id = azurerm_postgresql_flexible_server.postgres.id
  collation = "en_US.utf8"
  charset   = "UTF8"
}
