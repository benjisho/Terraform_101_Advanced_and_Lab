output "vultr_server_id" {
  description = "The ID of the server"
  value       = vultr_server.main.id
}

output "vultr_block_storage_id" {
  description = "The ID of the block storage"
  value       = vultr_block_storage.main.id
}
