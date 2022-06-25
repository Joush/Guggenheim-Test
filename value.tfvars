#Storage account
resource_group_name  = "rg-app-test"
location             = "eastus 2"
storage_account_name = ["saapptest1", "saapptest2", "saapptest3"]
tags = {
  env = test
}

#SQL 
server_name                  = "sql-app-test"
administrator_login          = "sqladmintest"
administrator_login_password = "Cl0udy%Test"
sql_database_name            = "db-app-test"
max_size_gb                  = "100"
sku_name                     = "Basic"
