terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.0.0"
    }
  }
}
resource "random_string" "random_suffix" {
  length  = 3
  special = false
  upper   = false
}

resource "google_compute_network" "vpc_network" {
  name = "backend-network-${random_string.random_suffix.result}"
  depends_on = [random_string.random_suffix]
}