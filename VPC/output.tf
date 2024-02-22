output "vpc_id" {
  value = google_compute_network.vpc.id
}

output "subnet_ids" {
  value = { for subnet in google_compute_subnetwork.subnets : subnet.name => subnet.id }
}

output "created_vpc_id" {
  value = module.gcp_vpc.vpc_id
}

output "created_subnet_ids" {
  value = module.gcp_vpc.subnet_ids
}