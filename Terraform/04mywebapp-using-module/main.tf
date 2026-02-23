terraform {
  backend "s3" {
    bucket         = "test-teja-devops-directive-bucket"
    key            = "mywebapp/terraform.tfstate"
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

module "mymodule1" {
  source = "../mymodule"
  my_bucket_prefix = "module1"
}

module "mymodule2" {
  source = "../mymodule"
  my_bucket_prefix = "module2--"
  instance_type = "t3.small"
  instance_name = "my module2 small"
}