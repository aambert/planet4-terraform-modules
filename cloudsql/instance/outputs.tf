output "cloudsql_name" {
  value = "${google_sql_database_instance.cloudsql_master.name}"
}
