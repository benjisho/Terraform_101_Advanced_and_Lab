/*
variable "gcp_credentials_filepath" {
  description = "The path to the GCP credentials JSON file"
  type        = string
}

variable "gcp_project_id" {
  description = "The ID of the project in GCP"
  type        = string
}
*/

variable "gcp_region" {
  description = "The region in which to create resources in GCP"
  type        = string
  default     = "us-central1"
}

/*
variable "gcp_boot_image" {
  description = "The boot image to use for the GCP instance"
  type        = string
  default     = "debian-cloud/debian-9"
}
*/
