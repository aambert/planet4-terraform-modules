output "username" {
  value = "${google_sql_user.user.name}"
}

output "password" {
  value = "${google_sql_user.user.password}"
}

output "database_name_production" {
  value = "${google_sql_database.production.name}"
}

output "database_name_staging" {
  value = "${google_sql_database.staging.name}"
}
