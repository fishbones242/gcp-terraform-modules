resource "google_service_account" "service_account" {
  for_each = toset(var.service_accounts)

  account_id   = each.value
  display_name = "${each.value} Service Account"
  project      = var.project_id
}
