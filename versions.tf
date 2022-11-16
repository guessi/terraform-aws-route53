terraform {
  required_version = "~> 1.2"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.39"
    }
  }
}
