resource "oci_bastion_bastion" "main" {
  compartment_id  = var.compartment_id
  target_subnet_id = oci_core_subnet.FoggyKitchenBastionSubnet.id

  name = "idpbastion"

  client_cidr_block_allow_list = [
    "0.0.0.0/0"
  ]

  max_session_ttl_in_seconds = 10800

  freeform_tags = {
    "managed-by" = "terraform"
  }
}
