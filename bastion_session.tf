resource "oci_bastion_session" "ssh" {
  bastion_id = oci_bastion_bastion.idp.id
 
  display_name = "oci-compute-idp-1-ssh"
  key_type = "PUB"
  session_ttl_in_seconds = 10800
 
  key_details {
    public_key_content = file(var.public_key_oci)
  }
 
  target_resource_details {
    session_type = "MANAGED_SSH"
    target_resource_id = oci_core_instance.FoggyKitchenWebserver1.id
    target_resource_operating_system_user_name = "ubuntu"
    target_resource_port = 22
  }
}
