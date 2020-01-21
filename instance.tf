resource "google_compute_instance" "streisand" {
  name         = "streisand-host"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "ubuntu-1604-lts"
    }
  }

  network_interface {
    network = google_compute_network.streisand.self_link
    access_config {
      nat_ip = google_compute_address.streisand.address
    }
  }

  metadata = {
    sshKeys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key_file)}"
  }
}