resource "oci_identity_compartment" "FoggyKitchenCompartment" {
  name = "QHSECompartment"
  description = "QHSE Compartment"
  compartment_id = var.compartment_ocid
}

