output "aws_vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "aws_subnet_id" {
  description = "The ID of the subnet"
  value       = aws_subnet.main.id
}

output "aws_internet_gateway_id" {
  description = "The ID of the Internet gateway"
  value       = aws_internet_gateway.main.id
}

output "aws_instance_id" {
  description = "The ID of the instance"
  value       = aws_instance.main.id
}

output "aws_s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.b.id
}
