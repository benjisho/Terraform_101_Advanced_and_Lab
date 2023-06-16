/*
variable "vultr_region_id" {
  description = "The region where Vultr operations will take place"
  type        = string
  default     = "1"  # Replace this with your actual region ID
}
*/

/*
variable "vultr_plan_id" {
  description = "The plan to use for instances"
  type        = string
  default     = "201"  # Replace this with your actual plan ID
}
*/

/*
variable "vultr_os_id" {
  description = "The ID of the base operating system to use"
  type        = string
  default     = "270"  # Replace this with your actual OS ID
}
*/

/*
variable "vultr_vps_name" {
  description = "The name of the VPS to be created"
  type        = string
  default     = "my-vps-123456"  # Replace this with your actual VPS name
}
*/

variable "vultr_block_storage_size_gb" {
  description = "The size of the block storage in GB"
  type        = number
  default     = 10  # Replace this with your actual desired block storage size
}
