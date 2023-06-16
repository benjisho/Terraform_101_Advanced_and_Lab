output "gcp_network_name" {
  description = "The name of the created GCP network"
  value       = google_compute_network.gcp_network.name
}

output "gcp_router_name" {
  description = "The name of the created GCP router"
  value       = google_compute_router.gcp_router.name
}

output "gcp_vpn_gateway_name" {
  description = "The name of the created GCP VPN gateway"
  value       = google_compute_vpn_gateway.gcp_vpn_gateway.name
}

output "gcp_instance_name" {
  description = "The name of the created GCP instance"
  value       = google_compute_instance.gcp_instance.name
}

output "gcp_storage_bucket_name" {
  description = "The name of the created GCP storage bucket"
  value       = google_storage_bucket.gcp_storage_bucket.name
}
