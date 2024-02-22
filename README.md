
# GCP Terraform Modules
Terraform module which creates a simple compute engine.

## Compute Engine

This is a sample usage for Compute Engine Module

```terraform
  module "compute_instance" {
  source = "./Compute"

  project_id    = "your-project-id"
  zone          = "us-central1-a"
  instance_name = "test-instance"
  machine_type  = "n1-standard-1"
  image_family  = "debian-10"
  image_project = "debian-cloud"
}

```
## VPC

```terraform
module "gcp_vpc" {
  source = "./VPC"  # Adjust based on your module's location

  project_id = "your-project-id"
  region     = "us-central1"
  vpc_name   = "my-custom-vpc"

  subnets = {
    "subnet-01" = {
      name          = "subnet-01"
      ip_cidr_range = "10.0.1.0/24"
      region        = "us-central1"
    },
    "subnet-02" = {
      name          = "subnet-02"
      ip_cidr_range = "10.0.2.0/24"
      region        = "europe-west1"
    }
    # Define additional subnets as needed
  }
}
```

## Cloud Storage
```terraform
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
```

## IAM & Service Accounts
```terraform
module "iam" {
  source = "./iam-module"

  project_id       = "your-project-id"
  roles            = {
    "roles/storage.admin" = ["user:jane.doe@example.com"]
  }
  service_accounts = ["my-service-account"]
}
```