variable "project_id" {
  description = "The ID of the project in which the resources will be deployed."
  type        = string
}

variable "region" {
  description = "The default region for the VPC."
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
}

variable "subnets" {
  description = "A map of subnets to be created."
  type = map(object({
    name          = string
    ip_cidr_range = string
    region        = string
  }))
}
