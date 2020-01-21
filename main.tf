provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
  zone    = var.gcp_zone
}

terraform {
  backend "remote" {
    organization = "citius"

    workspaces {
      name = "streisand-gcp"
    }
  }
}
