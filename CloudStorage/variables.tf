variable "project_id" {
  description = "The ID of the project in which the resource belongs."
  type        = string
}

variable "bucket_name" {
  description = "The name of the bucket. Must be globally unique."
  type        = string
}

variable "location" {
  description = "The location of the bucket."
  type        = string
  default     = "US"
}

variable "storage_class" {
  description = "The storage class of the bucket."
  type        = string
  default     = "STANDARD"
}
