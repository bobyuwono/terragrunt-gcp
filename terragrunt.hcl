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
    common_vars = yamldecode(file("common_vars.yaml"))
}

# stage/terragrunt.hcl
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
  provider "google" {
    project = local.common_vars.project
    region  = local.common_vars.region
    zone    = local.common_vars.zone
    }
EOF
}