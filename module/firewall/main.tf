terraform {
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

resource "google_compute_firewall" "default" {
  name    = var.name
  network = var.network

  allow {
    protocol = "tcp"
    ports    = var.ports
  }

  target_tags = var.target_tags
  source_ranges = var.source_ranges
}