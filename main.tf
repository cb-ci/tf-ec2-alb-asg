terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.65.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      "cb:user"        = "acaternberg"
      "cb:owner"       = "professional-services"
      "cb:environment" = "ps-dev"
    }
  }
}
