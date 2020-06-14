resource "google_compute_firewall" "firewall" {
  project      = "vpn-server-280302"
  name    = "allow-vpn"
  network = "default"
  allow {
    protocol = "udp"
    ports    = ["500","1194","1701","4500"]
  }
  target_tags = ["vpn"]
}
