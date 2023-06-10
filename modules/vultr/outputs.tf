output "vultr_instance_ip" {
  description = "Public IP address of the Vultr server"
  value       = vultr_server.example.main_ip
}
