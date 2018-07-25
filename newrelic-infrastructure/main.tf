terraform {
  backend "gcs" {}
}

provider "helm" {}

resource "helm_release" "newrelic-infrastructure" {
  name       = "${var.release_name}"
  repository = "${var.repository}"
  chart      = "newrelic-infrastructure"
  namespace  = "${var.namespace}"
  version    = "${var.version}"

  set {
    name  = "licenseKey"
    value = "${var.license}"
  }

  set {
    name  = "cluster"
    value = "${var.cluster}"
  }
}
