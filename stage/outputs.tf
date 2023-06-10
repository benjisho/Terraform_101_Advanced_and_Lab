output "aws_instance_public_ip" {
  value = module.aws.aws_instance_public_ip
}

output "vultr_instance_ip" {
  value = module.vultr.vultr_instance_ip
}

output "gcp_instance_public_ip" {
  value = module.gcp.gcp_instance_public_ip
}
