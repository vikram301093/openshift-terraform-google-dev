data "template_file" "inventory" {
  template = file("${path.cwd}/inventory.template.cfg")
  vars = {
    public_subdomain = "gcp-paas.hostgate.net"
    admin_hostname = "console-gcp-paas.hostgate.net"
    master1_hostname = google_compute_instance.master[0].network_interface.0.network_ip
    master2_hostname = google_compute_instance.master[1].network_interface.0.network_ip
    master3_hostname = google_compute_instance.master[2].network_interface.0.network_ip
    worker1_hostname = google_compute_instance.worker[0].network_interface.0.network_ip
    worker2_hostname = google_compute_instance.worker[1].network_interface.0.network_ip
    worker3_hostname = google_compute_instance.worker[2].network_interface.0.network_ip
    demo_htpasswd = var.htpasswd
  }
}
resource "local_file" "inventory" {
  content   = data.template_file.inventory.rendered
  filename = "${path.cwd}/inventory.cfg"
}


