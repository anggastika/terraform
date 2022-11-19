terraform {
  source = "../../../../module//instances"
}

include {
  path = find_in_parent_folders()
}

inputs = { 
  machine_type = "e2-medium"
  tags = ["http-server"]
  image = "ubuntu-os-cloud/ubuntu-2004-focal-v20221018"
  network = "vpc-test"
  subnetwork = "subnet-vpc-test"
}