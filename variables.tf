variable "region" {
  description = "The region where the resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  default     = "10.0.1.0/24"
}

variable "provider" {
  description = "The cloud provider where the resources will be created"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start"
  type = map
  default = {
    "aws"         = "t2.micro"
    "gcp"         = "n1-standard-1"
    "azure"       = "Standard_B2s"
    "vultr"       = "1024 MB RAM,25 GB SSD,1.00 TB BW"
    "digitalocean" = "s-1vcpu-1gb" # This is the slug for a 1 vCPU / 1GB RAM Droplet
  }
}

variable "image_id" {
  description = "The ID of the machine image to use for the instance"
  type = map
  default = {
    "aws"          = "ami-0dba2cb6798deb6d8" # Ubuntu 22.04 LTS for AWS
    "gcp"          = "ubuntu-os-cloud/ubuntu-2204-lts" # Ubuntu 22.04 LTS for GCP
    "azure"        = "Canonical:UbuntuServer:22_04-lts-gen2:latest" # Ubuntu 22.04 LTS for Azure
    "vultr"        = "Ubuntu 22.04 x64" # Ubuntu 22.04 for Vultr
    "digitalocean" = "ubuntu-22-04-x64" # Ubuntu 22.04 LTS for DigitalOcean
  }
}

variable "disk_size" {
  description = "The size of the disk to attach to the instance"
  type        = number
  default     = 10 # This is an example size in GB. Adjust as needed.
}

variable "instance_count" {
  description = "The number of instances to start"
  type        = number
  default     = 1
}

# Additional provider-specific variables can be added in a similar fashion
