resource "google_compute_instance" "vpn" {
  project      = "vpn-server-280302"
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

