variable "project_id" {}

resource "google_compute_instance" "vpn" {
  project      = "${var.project_id}"
  name         = "vpn"
  machine_type = "f1-micro"
  zone         = "asia-northeast1-a"
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
  tags           = ["vpn"]
  can_ip_forward = true
}

resource "google_compute_firewall" "firewall" {
  
  project      = "${var.project_id}"
  name    = "allow-vpn"
  network = "default"
  allow {
    protocol = "udp"
    ports    = ["500","1194","1701","4500"]
  }
  target_tags = ["vpn"]
}
