terraform {
  backend "s3" {
    bucket = "terraform-states-709092817533-eu-west-1-an"
    key = "tfexample"
    region = "eu-west-1"
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.71.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}
