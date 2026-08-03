terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
<<<<<<< HEAD
    bucket = "terrabucket0801"
    key    = "env/dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_infra"
=======
    bucket = "siva-kops-state-07-07-2026"
    key    = "env/dev/terraform.tfstate"
    region = "us-east-1"
>>>>>>> ce0a3df57fcf48919785e540eadf60676f66fe46
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}