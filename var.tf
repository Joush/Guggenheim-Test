variable "resource_group_name" {
  description = "A container that holds related resources for an Azure solution"
  type        = string
}

variable "location" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  default     = "westeurope"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the azure storage account"
  type        = list(string)
}

variable "account_kind" {
  description = "The type of storage account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2."
  default     = "StorageV2"
  type        = string
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS."
  default     = "LRS"
  type        = string
}

variable "account_tier" {
  description = " Defines the Tier to use for this storage account. Valid options are Standard and Premium, Standard_GRS, Standard_GZRS, Standard_LRS, Standard_RAGRS, Standard_RAGZRS, Standard_ZRS"
  default     = "Standard"
  type        = string
}

variable "access_tier" {
  description = "Defines the access tier for BlobStorage and StorageV2 accounts. Valid options are Hot and Cool."
  default     = "Hot"
  type        = string
}

variable "min_tls_version" {
  description = "The minimum supported TLS version for the storage account"
  default     = "TLS1_2"
  type        = string
}

variable "blob_soft_delete_retention_days" {
  description = "Specifies the number of days that the blob should be retained, between `1` and `365` days. Defaults to `7`"
  default     = 7
  type        = number
}

variable "container_soft_delete_retention_days" {
  description = "Specifies the number of days that the blob should be retained, between `1` and `365` days. Defaults to `7`"
  default     = 7
  type        = number
}

variable "enable_versioning" {
  description = "Is versioning enabled? Default to `false`"
  default     = false
  type        = bool
}

variable "last_access_time_enabled" {
  description = "Is the last access time based tracking enabled? Default to `false`"
  default     = false
  type        = bool
}

variable "change_feed_enabled" {
  description = "Is the blob service properties for change feed events enabled?"
  default     = false
  type        = bool
}

variable "network_rules" {
  description = "Network rules restricing access to the storage account."
  type        = object({ bypass = list(string), ip_rules = list(string), subnet_ids = list(string) })
  default     = null
}

# SQL 

variable "server_name" {
  description = "(Required) The name of the SQL Server on which to create the database."
  type        = string
}

variable "sql_server_version" {
  description = "SQL server version which is to be installed"
  type        = string
}

variable "administrator_login" {
  description = "The Administrator Login for the PostgreSQL Server. Changing this forces a new resource to be created."
  type        = string
}

variable "administrator_login_password" {
  description = "The Password associated with the administrator_login for the PostgreSQL Server."
  type        = string
}

variable "sql_database_name" {
  description = "(Required) The name of the database."
  type        = string
}

variable "max_size_gb" {
  description = "(Optional) The maximum size that the database can grow to. Applies only if create_mode is Default"
  type        = number
}


variable "zone_redundant" {
  description = " (Optional) Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones."
  type        = bool
  default     = false

}

variable "sku_name" {
  description = "(Optional) Specifies the name of the SKU used by the database. Applies only if create_mode is Default. Valid values are: Basic, Standard, Premium, etc"
  type        = string

}

variable "collation" {
  description = "(Optional) The name of the collation. Applies only if create_mode is Default"
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"

}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}