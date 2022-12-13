remote_state {
  backend = "gcs"
  config = {
    bucket = "terraform-batch-2b-staging"
    prefix = "${path_relative_to_include()}/terraform.tfstate"
    credentials = "/home/adhithia/gcp-staging.json"
  }
}

inputs = {
    region               = "asia-southeast2"
    zone                 = "asia-southeast2-a"
    project              = "staging-367908"
    credentials          = "/home/adhithia/gcp-staging.json"
    name = "${basename(get_terragrunt_dir())}"
}