/*
variable "azure_location" {
  description = "The location/region where to create the resources"
  default     = "westus2"
}
*/

variable "azure_resource_group_name" {
  description = "Name of the resource group"
  default     = "my-azure-rg"
}

variable "azure_virtual_network_name" {
  description = "Name of the virtual network"
  default     = "my-azure-vnet"
}

variable "azure_subnet_name" {
  description = "Name of the subnet"
  default     = "my-azure-subnet"
}

variable "azure_public_ip_name" {
  description = "Name of the public IP"
  default     = "my-azure-public-ip"
}

variable "azure_network_security_group_name" {
  description = "Name of the network security group"
  default     = "my-azure-nsg"
}

variable "azure_network_interface_name" {
  description = "Name of the network interface"
  default     = "my-azure-nic"
}

/*
variable "azure_virtual_machine_name" {
  description = "Name of the virtual machine"
  default     = "my-azure-vm"
}
*/

variable "azure_storage_account_name" {
  description = "Name of the storage account"
  default     = "mystorageaccountname"
}

variable "azure_storage_container_name" {
  description = "Name of the storage container"
  default     = "mystoragecontainername"
}

