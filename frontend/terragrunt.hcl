include "root" {
    path = find_in_parent_folders()
}

locals{
    project = yamldecode(file("common_vars.yaml"))
    region = yamldecode(file("common_vars.yaml"))
    zone = yamldecode(file("common_vars.yaml"))
}

terraform{
    source = "github.com/bobyuwono/terragrunt-modules.git//bucket?ref=main"
}

inputs = {
    bucket_name = "bucket-experiment-frontend"
    bucket_location = "us-central1-c"
}