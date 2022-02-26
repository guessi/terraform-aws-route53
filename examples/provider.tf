provider "aws" {
  region = "us-east-1" # route53 region must be "us-east-1"
}

terraform {
  required_version = ">= 1.0.0,< 2.0.0"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
