resource "google_dns_record_set" "console-paas" {
  name = var.openshift_url
  type = "A"
  ttl  = var.dns_record_ttl

  managed_zone = var.dns_managed_zone_name

  rrdatas = [google_compute_global_address.master.address]
}


resource "google_dns_record_set" "wildcard-paas" {
  name = var.wildcard_paas
  type = "A"
  ttl  = var.dns_record_ttl

  managed_zone = var.dns_managed_zone_name

  rrdatas = [google_compute_global_address.infra.address]
}

