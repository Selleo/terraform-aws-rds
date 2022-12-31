output "database_url" {
  description = "Database URL (format: postgres://..:5432/...)"
  sensitive   = true

  value = local.db_url
}
