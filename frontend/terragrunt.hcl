include "root" {
    path = find_in_parent_folders()
}

terraform{
    source = "github.com/bobyuwono/terragrunt-modules.git//bucket?ref=main"
}

inputs = {
    bucket_name = "bucket-experiment-4"
    bucket_location = "us-central1-c"
}