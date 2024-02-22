variable "project_id" {
  description = "The project ID."
  type        = string
}

variable "roles" {
  description = "Map of roles to members."
  type = map(list(string))
  default = {}
}

variable "service_accounts" {
  description = "List of service account names to create."
  type        = list(string)
  default     = []
}
