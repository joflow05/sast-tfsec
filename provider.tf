# Provider name
provider "aws" {
  region = var.region
}

# Storing state file on S3 backend
terraform {
  backend "s3" {
    bucket  = "landmark-automation-kenmak"
    region  = "us-west-2"
    key     = "backend/terraform.tfstate"
    encrypt = true
  }
}
