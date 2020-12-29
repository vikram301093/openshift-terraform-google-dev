resource "google_compute_instance" "bastion" {
  count = 1
  name = "bastion"
  machine_type = "n1-standard-1"
  zone = var.gcp_zone
  tags = ["bastion"]
  boot_disk {
    initialize_params {
      image = var.gcp_amis
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.public.name
    access_config {
        # Ephemeral
    }
  }
  metadata_startup_script = data.template_file.sysprep-bastion.rendered
  metadata {
    sshKeys = "centos:${file(var.bastion_key_path)}"
  }
}
resource "google_compute_instance" "master" {
  count = var.no_of_master_instances
  name = master-count.index
  machine_type = "n1-standard-2"
  zone = var.gcp_zone
  tags = ["master"]
  boot_disk {
    initialize_params {
      image = var.gcp_amis
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.private.name
  }
  metadata {
    sshKeys = "centos:${file(var.bastion_key_path)}"
  }
}

resource "google_compute_instance" "infra" {
  count = no_of_infra_instances
  name = infra-count.index
  machine_type = "n1-standard-2"
  zone = var.gcp_zone
  tags = ["infra"]
  boot_disk {
    initialize_params {
      image = var.gcp_amis
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.private.name
  }
  metadata {
    sshKeys = "centos:${file(var.bastion_key_path)}"
  }
}

resource "google_compute_instance" "worker" {
  count = var.no_of_worker_instances
  name = worker-count.index
  machine_type = "n1-standard-2"
  zone = var.gcp_zone
  tags = ["worker"]
  boot_disk {
    initialize_params {
      image = var.gcp_amis
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.private.name
  }
  metadata {
    sshKeys = "centos:${file(var.bastion_key_path)}"
  }
}

