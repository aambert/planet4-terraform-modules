variable "cloudsql_instance" {}

variable "database_name" {}

variable "database_charset" {
  default = "utf8mb4"
}

variable "database_collation" {
  default = "utf8mb4_unicode_ci"
}
