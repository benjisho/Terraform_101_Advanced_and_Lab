provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "main" {
  cidr_block = var.aws_vpc_cidr_block
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.aws_subnet_cidr_block
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
}

resource "aws_instance" "main" {
  ami           = var.aws_ami
  instance_type = var.aws_instance_type
  subnet_id     = aws_subnet.main.id
}

resource "aws_s3_bucket" "b" {
  bucket = var.aws_s3_bucket_name
  acl    = "private"
}
