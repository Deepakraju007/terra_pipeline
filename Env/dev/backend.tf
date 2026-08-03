terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "siva-kops-state-07-07-2026"
    key    = "env/dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_infra"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}
