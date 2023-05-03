terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.64.0"
    }
  }
  backend "s3" {
    bucket = "timeing-remote-state"
    key    = "time"
    region = "ap-south-1"
    dynamodb_table = "timeing-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}