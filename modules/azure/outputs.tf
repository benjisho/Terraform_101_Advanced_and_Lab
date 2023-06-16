output "virtual_network_id" {
  description = "ID of the virtual network"
  value       = azurerm_virtual_network.vnet.id
}

output "subnet_id" {
  description = "ID of the subnet"
  value       = azurerm_subnet.subnet.id
}

output "public_ip_address" {
  description = "Public IP address"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "virtual_machine_id" {
  description = "ID of the virtual machine"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "storage_account_id" {
  description = "ID of the storage account"
  value       = azurerm_storage_account.sa.id
}

output "storage_container_id" {
  description = "ID of the storage container"
  value       = azurerm_storage_container.sc.id
}
