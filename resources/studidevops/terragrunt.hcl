remote_state {
  backend = "gcs"
  config = {
    bucket = "terraform-state-studidevops"
    prefix = "${path_relative_to_include()}/terraform.tfstate"
    credentials = "/home/adhithia/gcp-studidevops.json"
  }
}

inputs = {
    region               = "asia-southeast2"
    zone                 = "asia-southeast2-a"
    project              = "studidevops-369306"
    credentials          = "/home/adhithia/gcp-studidevops.json"
    name = "${basename(get_terragrunt_dir())}"
}