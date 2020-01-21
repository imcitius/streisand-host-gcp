resource "google_compute_firewall" "streisand" {
  name    = "streisand-firewall"
  network = google_compute_network.streisand.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443", "636", "8888", "8443"]
  }

  allow {
    protocol = "udp"
    ports    = ["1701"]
  }

}
