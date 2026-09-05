terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.5.0"

  # Uncomment once you have an S3 bucket + DynamoDB table for remote state.
  # Without this, state is local to each pipeline run and terraform will
  # try to re-create resources that already exist on the next run.
  #
  # backend "s3" {
  #   bucket         = "your-terraform-state-bucket"
  #   key            = "secrets-manager/terraform.tfstate"
  #   region         = "ap-south-1"
  #   dynamodb_table = "terraform-locks"
  #   encrypt        = true
  # }
}

provider "aws" {
  region = "ap-south-1"
}
