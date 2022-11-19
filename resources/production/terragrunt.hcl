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
    project              = "agile-fortress-366903"
    credentials          = "/home/adhithia/gcp-production.jsonn"
    name = "${basename(get_terragrunt_dir())}"
}