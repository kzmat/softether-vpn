provider "google" {
  credentials = file(var.credential_file_path)
  project     = var.project_id
  region      = "asia-northeast1"
  zone        = "asia-northeast1-a"
}

resource "google_compute_instance" "vpn" {
  name         = "vpn"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
  tags           = ["vpn"]
  can_ip_forward = true
}

resource "google_compute_firewall" "firewall" {
  name    = "allow-vpn"
  network = "default"
  allow {
    protocol = "udp"
    ports    = ["500", "1194", "1701", "4500"]
  }
  target_tags = ["vpn"]
}
