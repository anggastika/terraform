inputs = {
    region               = "asia-southeast2"
    zone                 = "asia-southeast2-a"
    project              = "staging-367908"
    credentials          = "/Users/adhithia/Studidevops/Batch 2B/terraform/project-staging.json"
    name = "${basename(get_terragrunt_dir())}"
}