variable "project_id" {
  description = "The ID of the project in which the resource belongs."
  type        = string
}

variable "zone" {
  description = "The zone where the machine will be created."
  type        = string
}

variable "instance_name" {
  description = "The name of the instance."
  type        = string
}

variable "machine_type" {
  description = "The machine type of the instance."
  type        = string
}

variable "image_family" {
  description = "The image family for the operating system."
  type        = string
}

variable "image_project" {
  description = "The project that the operating system image belongs to."
  type        = string
}

variable "tags" {
  description = "A list of tags to attach to the instance."
  type        = list(string)
  default     = []
}

variable "network" {
  description = "The name of the network to attach the instance to."
  type        = string
  default     = "default"
}

variable "firewall_rules" {
  description = "A list of firewall rules to be created."
  type        = list(object({
    name        = string
    direction   = string
    priority    = number
    ranges      = list(string)
    ports       = list(string)
    target_tags = list(string)
  }))
  default     = []
}
