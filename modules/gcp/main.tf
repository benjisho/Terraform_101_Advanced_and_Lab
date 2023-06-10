provider "google" {
  credentials = file(var.gcp_credentials_filepath)
  project     = var.gcp_project_id
  region      = var.gcp_region
}

resource "google_compute_network" "example" {
  name                    = "example-network"
  auto_create_subnetworks = "true"
}

resource "google_compute_router" "example" {
  name    = "example-router"
  network = google_compute_network.example.name
  region  = var.gcp_region
}

resource "google_compute_vpn_gateway" "example" {
  name    = "example-vpngw"
  network = google_compute_network.example.self_link
  region  = var.gcp_region
}

resource "google_compute_instance" "example" {
  name         = "example"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = var.gcp_boot_image
    }
  }

  network_interface {
    network = google_compute_network.example.name
  }
}

resource "google_storage_bucket" "example" {
  name     = "example-bucket"
  location = "US"
}
