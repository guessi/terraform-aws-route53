terraform {
  required_version = ">= 0.11.11,<0.12.0"
}

provider "aws" {
  version = ">= 2.0"
  region  = "us-east-1" # route53 region must be "us-east-1"
  profile = "default"   # define the aws profile name here
}
