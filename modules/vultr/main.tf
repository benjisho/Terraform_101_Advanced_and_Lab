provider "vultr" {
  api_key = var.vultr_api_key
}

resource "vultr_server" "example" {
  plan_id   = var.plan_id
  region_id = var.region_id
  os_id     = var.os_id
}

resource "vultr_network" "example" {
  region_id = var.region_id
  cidr_block = "10.0.0.0/24"
  description = "Example network"
}

resource "vultr_block_storage" "example" {
  region_id = var.region_id
  size_gb = 10
  label = "example-storage"
}
