terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.0.0"
    }
  }
}

resource "google_storage_bucket" "one" {
  name = "bucket-boyo-1"
  storage_class = "REGIONAL"
  location = "us-east1"
}

resource "google_storage_bucket" "three" {
  name = "bucket-boyo-3"
  storage_class = "REGIONAL"
  location = "us-east1"
}
