generate "backend" {
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
    terraform {
        backend "gcs"{
            bucket = "terragrunting"
            prefix = "${path_relative_to_include()}/terraform.tfstate"
        }
    }
    EOF
}

# stage/terragrunt.hcl
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
  provider "google" {
    project = var.project
    region  = var.region
    zone    = var.zone
    }
EOF
}