module "compute1" {
  source = "./Compute"

  project_id    = "sandbox-413123"
  zone          = "asia-southeast1-a"
  instance_name = "test-instance"
  machine_type  = "e2-medium"
  image_family  = "debian-10"
  image_project = "debian-cloud"
}


module "my_gcs_bucket" {
  source      = "./CloudStorage"
  project_id  = "your-project-id"
  bucket_name = "my-unique-bucket-name"
  location    = "EU"
  storage_class = "NEARLINE"
}

output "created_bucket_url" {
  value = module.my_gcs_bucket.bucket_url
}
