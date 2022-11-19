inputs = {
    region               = "asia-southeast2"
    zone                 = "asia-southeast2-a"
    project              = "agile-fortress-366903"
    credentials          = "/Users/adhithia/Studidevops/Batch 2B/terraform/my-first-project.json"
    name = "${basename(get_terragrunt_dir())}"
}