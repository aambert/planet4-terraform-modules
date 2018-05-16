terraform {
  backend "gcs" {}
}

provider "helm" {}

resource "helm_release" "elasticsearch" {
  name       = "${var.release_name}"
  repository = "${var.repository}"
  chart      = "elasticsearch"
  namespace  = "${var.namespace}"

  set {
    name  = "image.repository"
    value = "${var.image_repository}"
  }

  set {
    name  = "image.tag"
    value = "${var.image_tag}"
  }

  set {
    name  = "rbac.create"
    value = "${var.rbac_create}"
  }

  set {
    name  = "data.persistence.enabled"
    value = "${var.data_persistence_enabled}"
  }
}
