terraform {
  backend "s3" {
    bucket         = "test-teja-devops-directive-bucket"
    key            = "mybucket/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "mybucket" {
  bucket        = "test-teja-devops-directive-bucket-dev"
  force_destroy = true
}

resource "aws_s3_bucket" "mybucket_test" {
  bucket        = "test-teja-devops-directive-bucket-test"
  force_destroy = true
}