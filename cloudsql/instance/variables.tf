variable "region" {
  description = "Google Compute region to use for the DB instances"
  default     = "us-central1"
}

variable "project" {
  description = "GCP Project name"
}

# Cloud SQL variables

## Main configuration
variable "cloudsql_master_name" {
  description = "Name of the CloudSQL master server"
}

variable "cloudsql_version" {
  description = "The MySQL version to use. Can be MYSQL_5_6, MYSQL_5_7 or POSTGRES_9_6 for second-generation instances, or MYSQL_5_5 or MYSQL_5_6 for first-generation instances."
  default     = "MYSQL_5_7"
}

## Cloud SQL settings
variable "cloudsql_tier" {
  description = "(Default: db-n1-standard-1) The machine tier (First Generation) or type (Second Generation) to use. See tiers for more details and supported versions. Postgres supports only shared-core machine types such as db-f1-micro, and custom machine types such as db-custom-2-13312."
  default     = "db-n1-standard-1"
}

variable "disk_size" {
  description = "(Optional, Second Generation, Default: 10) The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased."
  default     = "10"
}

variable "disk_autoresize" {
  description = "(Optional, Second Generation, Default: true) Configuration to increase storage size automatically."
  default     = true
}

variable "disk_type" {
  description = "(Optional, Second Generation, Default: PD_SSD) The type of data disk: PD_SSD or PD_HDD"
  default     = "PD_SSD"
}

variable "backup_enabled" {
  default = true
}

variable "backup_start_time" {
  description = "Time at which to begin automatic backups"
  default     = "19:00"
}

variable "master_location_preference_zone" {
  description = "Zone in which to create the CloudSQL master instance"
  default     = "us-central1-a"
}

variable "failover_location_preference_zone" {
  description = "Additional zone in which to create a failover replice"
  default     = "us-central1-b"
}

variable "database_charset" {
  default = "utf8mb4"
}
