variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
}

/*
variable "do_region" {
  description = "DigitalOcean region"
  type        = string
  default     = "nyc3"
}

variable "do_droplet_name" {
  description = "Name of the Droplet"
  type        = string
  default     = "my-droplet"
}

variable "do_image" {
  description = "Droplet image"
  type        = string
  default     = "ubuntu-18-04-x64"
}

variable "do_size" {
  description = "Droplet size"
  type        = string
  default     = "s-1vcpu-1gb"
}
*/

variable "do_ssh_keys" {
  description = "List of SSH key fingerprints to enable on the Droplet"
  type        = list(string)
  default     = []
}

variable "do_spaces_name" {
  description = "Name of the Spaces bucket"
  type        = string
  default     = "my-space"
}

/*
variable "do_spaces_region" {
  description = "Region of the Spaces bucket"
  type        = string
  default     = "nyc3"
}
*/

