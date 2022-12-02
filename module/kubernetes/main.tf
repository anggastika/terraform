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

resource "google_container_cluster" "default" {
  name     = var.name

  remove_default_node_pool = true
  initial_node_count       = var.node_count
}

resource "google_container_node_pool" "default" {
  name       = "${var.name}-node-pool"
  cluster    = google_container_cluster.default.name
  node_count = var.node_count

  node_config {
    preemptible  = false
    machine_type = var.instance_type
  }
}