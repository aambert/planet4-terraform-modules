terraform {
  backend "gcs" {}
}

provider "google" {}

resource "google_sql_user" "user" {
  name     = "${var.cloudsql_username}"
  instance = "${var.cloudsql_instance}"
  project  = "${var.project}"
  host     = "${var.cloudsql_userhost}"
  password = "${var.cloudsql_userpass}"
}
