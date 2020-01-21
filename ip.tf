resource "google_compute_network" "streisand" {
  name = "streisand-network"
}

resource "google_compute_address" "streisand" {
  name = "streisand-ip"
}