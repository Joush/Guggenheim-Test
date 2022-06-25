resource "azurerm_mssql_server" "example" {
  name                         = var.server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sql_server_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  tags                         = var.tags
}
resource "azurerm_mssql_database" "example" {

  name           = var.sql_database_name
  server_id      = azurerm_mssql_server.example.id
  collation      = var.collation
  max_size_gb    = var.max_size_gb
  zone_redundant = var.zone_redundant
  sku_name       = var.sku_name
  tags           = var.tags
}  