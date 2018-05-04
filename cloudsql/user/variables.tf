variable "cloudsql_instance" {}

variable "project" {}

variable "cloudsql_username" {}

variable "cloudsql_userpass" {}

variable "cloudsql_userhost" {
  default = "%"
}

variable "database_prefix" {
  default = "app"
}

variable "database_charset" {
  default = "utf8mb4"
}

variable "database_collation" {
  default = "utf8mb4_unicode_ci"
}
