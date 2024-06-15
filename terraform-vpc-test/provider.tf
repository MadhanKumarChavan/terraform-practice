
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

   backend "s3" {
    bucket = "devopsm26-remote-state"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "devopsm26-locking"
  }
}



# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

