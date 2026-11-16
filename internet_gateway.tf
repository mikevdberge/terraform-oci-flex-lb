resource "oci_core_internet_gateway" "FoggyKitchenInternetGateway" {
    compartment_id = oci_identity_compartment.FoggyKitchenCompartment.id
    display_name = "QHSEInternetGateway"
    vcn_id = oci_core_virtual_network.FoggyKitchenVCN.id
}
