
output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "vm_public_ip" {
  value = azurerm_public_ip.vm_public_ip.ip_address
}

output "vm_private_ip" {
  value = azurerm_network_interface.vm_nic.private_ip_address
}

output "postgres_server_fqdn" {
  value = azurerm_postgresql_flexible_server.postgres.fqdn
}

output "postgres_database_name" {
  value = azurerm_postgresql_flexible_server_database.database.name
}
