module "aws" {
  source = "../modules/aws"
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  aws_region     = var.aws_region
  aws_ami        = var.aws_ami
}

module "vultr" {
  source     = "../modules/vultr"
  vultr_api_key = var.vultr_api_key
  plan_id       = var.plan_id
  region_id     = var.region_id
  os_id         = var.os_id
}

module "gcp" {
  source = "../modules/gcp"
  gcp_credentials_filepath = var.gcp_credentials_filepath
  gcp_project_id           = var.gcp_project_id
  gcp_region               = var.gcp_region
  gcp_boot_image           = var.gcp_boot_image
}
