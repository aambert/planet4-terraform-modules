variable "repository" {
  default = "incubator"
}

variable "release_name" {
  default = "elasticsearch"
}

variable "namespace" {
  default = "default"
}

variable "image_repository" {
  default = "gcr.io/planet-4-151612/elasticsearch"
}

variable "image_tag" {
  default = "v0.1.1"
}

variable "rbac_create" {
  default = "true"
}

variable "data_persistence_enabled" {
  default = "false"
}
