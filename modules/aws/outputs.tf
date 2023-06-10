output "aws_instance_public_ip" {
  description = "Public IP address of the AWS instance"
  value       = aws_instance.example.public_ip
}
