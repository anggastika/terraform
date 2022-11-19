terraform {
  source = "../../../../module//vpc"
}

include {
  path = find_in_parent_folders()
}

inputs = { 
  subnet_name = "subnet-vpc-test"
  subnet_ip_cidr_range = "10.2.0.0/16"
}