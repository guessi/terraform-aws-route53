provider "aws" {
  version = ">= 2.0,< 4.0"
  region  = "us-east-1" # route53 region must be "us-east-1"
  profile = "default"   # define the aws profile name here
}
