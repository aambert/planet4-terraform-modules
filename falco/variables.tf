variable "release_name" {
  default = "p4-sysdig-falco"
}

variable "version" {
  default = "0.2.0"
}

variable "namespace" {
  default = "default"
}

variable "jsonOutput" {
  default = "true"
}

variable "jsonIncludeOutputProperty" {
  default = "true"
}

variable "programOutputEnabled" {
  default = "false"
}

variable "programOutputProgram" {
  default = ""
}

variable "fakeEventGeneratorEnabled" {
  default = "false"
}
