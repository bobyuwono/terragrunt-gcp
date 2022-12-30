generate "backend" {
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
    terraform {
        backend "gcs"{
            bucket = "big-terra"
            prefix = "${path_relative_to_include()}/terraform.tfstate"
        }
    }
    EOF
}

locals{
    project = yamldecode(file(find_in_parent_folders("common_vars.yaml")))
    region = yamldecode(file(find_in_parent_folders("common_vars.yaml")))
    zone = yamldecode(file(find_in_parent_folders("common_vars.yaml")))
}

# stage/terragrunt.hcl
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
  provider "google" {
    project = local.project
    region  = local.region
    zone    = local.zone
    }
EOF
}