terraform {
  backend "gcs" {}
}

provider "google" {}

resource "google_sql_database_instance" "cloudsql_master" {
  name    = "${var.cloudsql_master_name}"
  project = "${var.project}"
  region  = "${var.region}"

  database_version = "${var.cloudsql_version}"

  settings {
    tier      = "${var.cloudsql_tier}"
    disk_type = "${var.disk_type}"

    location_preference {
      zone = "${var.master_location_preference_zone}"
    }

    backup_configuration {
      enabled            = "${var.backup_enabled}"
      start_time         = "${var.backup_start_time}"
      binary_log_enabled = true
    }

    ip_configuration {
      ipv4_enabled = true
    }

    database_flags {
      name  = "slow_query_log"
      value = "on"
    }

    database_flags {
      name  = "character_set_server"
      value = "${var.database_charset}"
    }
  }
}
