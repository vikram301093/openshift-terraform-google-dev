resource "google_compute_global_address" "master" {
  name         = var.master_publicip_name
  ip_version   = "IPV4"
  address_type = "EXTERNAL"
}

resource "google_compute_global_address" "infra" {
  name         = var.infra_publicip_name
  ip_version   = "IPV4"
  address_type = "EXTERNAL"
}
