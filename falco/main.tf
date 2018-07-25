terraform {
  backend "gcs" {}
}

provider "helm" {}

resource "helm_release" "sysdig-falco" {
  name       = "${var.release_name}"
  repository = "stable"
  chart      = "falco"
  namespace  = "${var.namespace}"
  version    = "${var.version}"

  set {
    name  = "falco.jsonOutput"
    value = "${var.jsonOutput}"
  }

  set {
    name  = "falco.jsonIncludeOutputProperty"
    value = "${var.jsonIncludeOutputProperty}"
  }

  set {
    name  = "falco.programOutput.enabled"
    value = "${var.programOutputEnabled}"
  }

  set {
    name  = "falco.programOutput.program"
    value = "${var.programOutputProgram}"
  }

  set {
    name  = "falco.fakeEventGenerator.enabled"
    value = "${var.fakeEventGeneratorEnabled}"
  }
}
