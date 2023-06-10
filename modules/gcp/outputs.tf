output "gcp_instance_public_ip" {
  description = "Public IP address of the GCP instance"
  value       = google_compute_instance.example.network_interface[0].access_config[0].nat_ip
}
