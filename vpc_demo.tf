terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
}

# Resource Block

resource "aws_vpc" "demo" {
    cidr_block       = "10.0.0.0/16"
    instance_tenancy = "default"

    tags = {
        Name = "demo_vpc"
    }
}