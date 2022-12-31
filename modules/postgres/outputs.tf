output "database_url" {
  description = "Database URL (format: postgres://..:5432/...)"
  sensitive   = true

  value = local.db_url
}

output "connection_envs" {
  description = "PostgreSQL connection environment variables"
  sensitive   = true

  value = {
    PGHOST     = local.db_host
    PGPORT     = local.db_port
    PGDATABASE = local.db_name
    PGUSER     = local.db_user
    PGPASSWORD = local.db_pass
  }
}
