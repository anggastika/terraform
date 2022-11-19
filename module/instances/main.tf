terraform {
  backend "gcs" {}
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.43.1"
    }
  }
}

provider "google" {
  # Configuration options
  region = var.region
  zone = var.zone
  project = var.project
  credentials = var.credentials
}

resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type

  tags = var.tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network
    subnetwork = var.subnetwork

    access_config {
      // Ephemeral public IP
    }
  }
}