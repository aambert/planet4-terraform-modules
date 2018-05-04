terraform {
  backend "gcs" {}
}

provider "kubernetes" {}

resource "kubernetes_namespace" "nro" {
  metadata {
    annotations {
      name = "${var.namespace}"
    }

    labels {
      application = "${var.application}"
      nro = "${var.nro}"
    }

    name = "${var.namespace}"
  }
}
