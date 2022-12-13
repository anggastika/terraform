remote_state {
  backend = "gcs"
  config = {
    bucket = "terraform-batch-2b"
    prefix = "${path_relative_to_include()}/terraform.tfstate"
    credentials = "/home/adhithia/gcp-production.json"
  }
}

inputs = {
    region               = "asia-southeast2"
    zone                 = "asia-southeast2-a"
    project              = "thinking-league-367003"
    credentials          = "/home/adhithia/gcp-production.json"
    name = "${basename(get_terragrunt_dir())}"
}