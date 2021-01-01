output "bastion" {
  value = google_compute_instance.bastion.network_interface.0.network_ip
}
output "master_public_ip" {
  value = google_compute_global_address.master.address
}
output "infra_public_ip" {
  value = google_compute_global_address.infra.address
}

