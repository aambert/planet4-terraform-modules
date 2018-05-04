terraform {
  backend "gcs" {}
}

provider "google" {}

# User configuration
resource "google_sql_user" "users" {
  name     = "${var.cloudsql_username}"
  instance = "${google_sql_database_instance.cloudsql_master.name}"
  host     = "${var.cloudsql_userhost}"
  password = "${var.cloudsql_userpass}"
}
