# Terraform configuration

provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  backend "s3" {
    bucket = "cgtf"
    key    = "tfstatedev"
    region = "ap-southeast-2"
  }
}

module "website_s3_bucket" {
  source = "../modules/aws-s3-static-website-bucket"

  bucket_name = var.bucket_name

  tags = {
    Environment = var.branch
  }
}
