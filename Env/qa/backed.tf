terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "terrabucket0801"
    key    = "Env/qa/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_infra"
  }
}

# Configure the AWS Provider  
provider "aws" {
  region = var.aws_region
}