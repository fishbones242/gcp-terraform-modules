provider "google" {
  project = var.project_id
}

resource "google_compute_instance" "default" {
  name         = var.instance_name
  zone         = var.zone
  machine_type = var.machine_type
  boot_disk {
    initialize_params {
      image = "projects/${var.image_project}/global/images/family/${var.image_family}"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}
