variable "tenancy_ocid" {}
#variable "user_ocid" {}
#variable "fingerprint" {}
#variable "private_key_path" {}
variable "compartment_ocid" {}
variable "region" {}
variable "private_key_oci" {}
variable "public_key_oci" {}

variable "VCN-CIDR" {
  default = "10.0.0.0/16"
}

variable "VCNname" {
  default = "FoggyKitchenVCN"
}

variable "Shapes" {
 default = ["VM.Standard.E2.1.Micro"]
}

variable "OsImage" {
  default = "Canonical-Ubuntu-26.04-Minimal-2026.11.05-0"
}

variable "webservice_ports" {
  default = ["80","443"]
}

variable "bastion_ports" {
  default = ["22"]
}

