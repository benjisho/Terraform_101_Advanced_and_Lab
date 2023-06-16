output "droplet_id" {
  description = "ID of the Droplet"
  value       = digitalocean_droplet.droplet.id
}

output "droplet_ipv4_address" {
  description = "Public IPv4 address of the Droplet"
  value       = digitalocean_droplet.droplet.ipv4_address
}

output "droplet_ipv6_address" {
  description = "Public IPv6 address of the Droplet"
  value       = digitalocean_droplet.droplet.ipv6_address
}

output "spaces_bucket_name" {
  description = "Name of the Spaces bucket"
  value       = digitalocean_spaces_bucket.bucket.name
}

output "spaces_bucket_urn" {
  description = "URN of the Spaces bucket"
  value       = digitalocean_spaces_bucket.bucket.urn
}
