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


resource "google_storage_bucket" "one" {
  name = "bucket-bobywn-1"
  storage_class = "REGIONAL"
  location = "us-east1"
}
resource "google_storage_bucket" "three" {
  name = "bucket-bobywn-3"
  storage_class = "REGIONAL"
  location = "us-east1"
}

resource "google_storage_bucket" "fourfour" {
  name = "bucket-bobywn-44"
  storage_class = "REGIONAL"
  location = "us-east1"
}


# resource "google_compute_network" "vpc_network" {
#   name = "terraform-network-${random_string.random_suffix.result}"
#   depends_on = [
#     random_string.random_suffix
#   ]
# }