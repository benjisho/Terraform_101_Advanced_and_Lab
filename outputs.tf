output "aws" {
  description = "Information related to AWS resources"
  value = {
    vpc_id       = module.aws.vpc_id
    instance_id  = module.aws.instance_id
    instance_url = module.aws.instance_url
    s3_bucket    = module.aws.s3_bucket
    vpn_gateway  = module.aws.vpn_gateway
  }
}

output "gcp" {
  description = "Information related to GCP resources"
  value = {
    network_name        = module.gcp.gcp_network_name
    router_name         = module.gcp.gcp_router_name
    vpn_gateway_name    = module.gcp.gcp_vpn_gateway_name
    instance_name       = module.gcp.gcp_instance_name
    storage_bucket_name = module.gcp.gcp_storage_bucket_name
  }
}

output "vultr" {
  description = "Information related to Vultr resources"
  value = {
    network_id  = module.vultr.network_id
    instance_id = module.vultr.instance_id
    block_storage_id = module.vultr.block_storage_id
    vpn_gateway  = module.vultr.vpn_gateway
  }
}

output "azure" {
  description = "Information related to Azure resources"
  value = {
    virtual_network_id   = module.azure.virtual_network_id
    subnet_id            = module.azure.subnet_id
    public_ip_address    = module.azure.public_ip_address
    virtual_machine_id   = module.azure.virtual_machine_id
    storage_account_id   = module.azure.storage_account_id
    storage_container_id = module.azure.storage_container_id
  }
}

output "digitalocean" {
  description = "Information related to DigitalOcean resources"
  value = {
    droplet_id         = module.digitalocean.droplet_id
    droplet_ipv4_address = module.digitalocean.droplet_ipv4_address
    droplet_ipv6_address = module.digitalocean.droplet_ipv6_address
    spaces_bucket_name = module.digitalocean.spaces_bucket_name
    spaces_bucket_urn  = module.digitalocean.spaces_bucket_urn
  }
}
