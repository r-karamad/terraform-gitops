terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-state-gitops"
    key            = "dev.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-state-gitops"
    encrypt        = true
  }

  required_version = ">= 1.3"
}

provider "aws" {
  region = var.aws_region
}