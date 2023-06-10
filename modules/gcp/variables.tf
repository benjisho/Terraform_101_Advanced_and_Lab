variable "gcp_credentials_filepath" {
  description = "File path to the GCP credentials JSON file"
  type        = string
}

variable "gcp_project_id" {
  description = "Project ID for the GCP resources"
  type        = string
}

variable "gcp_region" {
  description = "Region for the GCP resources"
  type        = string
}

variable "gcp_boot_image" {
  description = "Boot image for the GCP instance"
  type        = string
}
