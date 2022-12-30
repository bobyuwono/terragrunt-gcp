include "root" {
    path = find_in_parent_folders()
}

locals{
    common_vars = yamldecode(file("common_vars.yaml"))
}

terraform{
    source = "github.com/bobyuwono/terragrunt-modules.git//bucket?ref=main"
}

inputs = {
    bucket_name = "bucket-experiment-backend"
    bucket_location = "us-central1-c"
}