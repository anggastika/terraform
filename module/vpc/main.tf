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

resource "google_compute_network" "default" {
  name = var.name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "default" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_ip_cidr_range
  
  network       = google_compute_network.default.id
  
}