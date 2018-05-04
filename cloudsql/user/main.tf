terraform {
  backend "gcs" {}
}

provider "google" {}

# User configuration
resource "google_sql_user" "user" {
  name     = "${var.cloudsql_username}"
  instance = "${var.cloudsql_instance}"
  project  = "${var.project}"
  host     = "${var.cloudsql_userhost}"
  password = "${var.cloudsql_userpass}"
}

resource "google_sql_database" "production" {
  name      = "${var.cloudsql_username}_${var.database_prefix}_production"
  instance  = "${var.cloudsql_instance}"
  project  = "${var.project}"
  charset   = "${var.database_charset}"
  collation = "${var.database_collation}"
}

resource "google_sql_database" "staging" {
  name      = "${var.cloudsql_username}_${var.database_prefix}_staging"
  instance  = "${var.cloudsql_instance}"
  project  = "${var.project}"
  charset   = "${var.database_charset}"
  collation = "${var.database_collation}"
}
