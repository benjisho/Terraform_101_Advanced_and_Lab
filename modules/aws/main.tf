provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
}

resource "aws_internet_gateway" "example" {
  vpc_id = aws_vpc.example.id
}

resource "aws_instance" "example" {
  ami           = var.aws_ami
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.example.id]

  tags = {
    Name = "example-instance"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "bucketname"
  acl    = "private"
}

resource "aws_security_group" "example" {
  vpc_id = aws_vpc.example.id
}
