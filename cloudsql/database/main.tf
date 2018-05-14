resource "google_sql_database" "database" {
  name      = "${var.database_name}"
  instance  = "${var.cloudsql_instance}"
  charset   = "${var.database_charset}"
  collation = "${var.database_collation}"
}
