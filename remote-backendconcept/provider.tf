terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "devopsm26-remote-state"
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "devopsm26-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}