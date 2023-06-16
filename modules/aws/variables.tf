/*
variable "aws_region" {
  description = "The region where AWS operations will take place"
  type        = string
  default     = "us-east-1"
}

variable "aws_vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "aws_subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "aws_instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "aws_ami" {
  description = "The ID of a base Amazon Machine Image (AMI)"
  type        = string
  default     = "ami-0c94855ba95c574c8"  # Replace this with your actual AMI ID
}
*/

variable "aws_s3_bucket_name" {
  description = "The name of the bucket to be created"
  type        = string
  default     = "my-bucket-123456"  # Replace this with your actual bucket name
}
