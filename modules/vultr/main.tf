provider "vultr" {
  api_key = var.vultr_api_key
}

resource "vultr_server" "main" {
  plan_id   = var.vultr_plan_id
  region_id = var.vultr_region_id
  os_id     = var.vultr_os_id
  label     = var.vultr_vps_name
}

resource "vultr_block_storage" "main" {
  size_gb = var.vultr_block_storage_size_gb
  region_id = var.vultr_region_id
}
