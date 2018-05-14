variable "gcp_region" {
  default = "us-central1"
}

variable "cloudsql_master_name" {
  description = "Name"
}

variable "cloudsql_version" {
  default = "MYSQL_5_7"
}

variable "cloudsql_tier" {
  default = "db-n1-standard-1"
}

variable "disk_size" {
  default = "10"
}

variable "disk_autoresize" {
  default = true
}

variable "disk_type" {
  default = "PD_SSD"
}

variable "backup_enabled" {
  default = true
}

variable "backup_start_time" {
  default = "19:00"
}

variable "master_location_preference_zone" {
  default = "us-central1-a"
}

variable "failover_location_preference_zone" {
  default = "us-central1-b"
}

variable "database_charset" {
  default = "utf8mb4"
}
