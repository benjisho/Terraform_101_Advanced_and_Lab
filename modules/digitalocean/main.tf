provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "droplet" {
  image  = var.do_image
  name   = var.do_droplet_name
  region = var.do_region
  size   = var.do_size
  ssh_keys = var.do_ssh_keys
}

resource "digitalocean_spaces_bucket" "bucket" {
  name   = var.do_spaces_name
  region = var.do_spaces_region
}
