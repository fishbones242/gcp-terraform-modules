output "instance_id" {
  description = "The ID of the created instance."
  value       = google_compute_instance.default.id
}

output "instance_name" {
  description = "The name of the created instance."
  value       = google_compute_instance.default.name
}

output "instance_zone" {
  description = "The zone of the created instance."
  value       = google_compute_instance.default.zone
}
