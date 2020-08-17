variable "project_id" {
  description = "Google Project ID."
  type        = string
}

variable "static_source" {
  description = "Static content source"
  type        = string
}

variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "us-central1"
}

variable "gae_location" {
  description = "App Engine location"
  type        = string
}
