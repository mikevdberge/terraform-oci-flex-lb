resource "oci_bastion_bastion" "main" {
  compartment_id  = oci_identity_compartment.FoggyKitchenCompartment.id
  target_subnet_id = oci_core_subnet.FoggyKitchenBastionSubnet.id

  bastion_type = "STANDARD"
  name = "idpbastion"

  client_cidr_block_allow_list = [
    "0.0.0.0/0"
  ]

  max_session_ttl_in_seconds = 10800

  freeform_tags = {
    "managed-by" = "terraform"
  }
}

resource "oci_bastion_session" "ssh" {
  bastion_id = oci_bastion_bastion.idp.id
 
  display_name = "oci-compute-idp-1-ssh"
  key_type = "PUB"
  session_ttl_in_seconds = 10800
 
  key_details {
    public_key_content = file(var.ssh_public_key_path)
  }
 
  target_resource_details {
    session_type = "MANAGED_SSH"
    target_resource_id = oci_core_instance.idp.id
    target_resource_operating_system_user_name = "ubuntu"
    target_resource_port = 22
  }
}
