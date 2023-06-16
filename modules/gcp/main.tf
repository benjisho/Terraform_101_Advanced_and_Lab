provider "google" {
  credentials = file(var.gcp_credentials_filepath)
  project     = var.gcp_project_id
  region      = var.gcp_region
}

resource "google_compute_network" "gcp_network" {
  name                    = "gcp-example-network"
  auto_create_subnetworks = "true"
}

resource "google_compute_router" "gcp_router" {
  name    = "gcp-example-router"
  network = google_compute_network.gcp_network.name
  region  = var.gcp_region
}

resource "google_compute_vpn_gateway" "gcp_vpn_gateway" {
  name    = "gcp-example-vpngw"
  network = google_compute_network.gcp_network.self_link
  region  = var.gcp_region
}

resource "google_compute_instance" "gcp_instance" {
  name         = "gcp-example-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = var.gcp_boot_image
    }
  }

  network_interface {
    network = google_compute_network.gcp_network.name
  }
}

resource "google_storage_bucket" "gcp_storage_bucket" {
  name     = "gcp-example-bucket"
  location = "US"
}
