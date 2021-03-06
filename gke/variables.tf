variable "cluster_name" {
  default = "kubernetes-cluster"
}

variable "node_count" {
  default = 3
}

variable "max_node_count" {
  default = 5
}

variable "min_node_count" {
  default = 3
}

variable "admin_username" {
  default = "admin"
}

variable "admin_password" {}

variable "machine_type" {
  default = "n1-standard-1"
}

variable "disk_size_gb" {
  default = "100"
}

variable "master_zone" {
  default = "us-central1-a"
}

variable "additional_zones" {
  default = []
}

variable "min_master_version" {
  default = "1.9.7-gke.0"
}

variable "default_pool_name" {
  default = "default-pool"
}

variable "initial_default_pool_name" {
  default = "unused"
}

variable "daily_maintenance_window_start_time" {
  default = "00:00"
}

variable "project" {
  default = "planet4-production"
}

variable "environment" {
  default = "production"
}

variable "kubernetes_network_name" {
  default = "kubernetes-network"
}
