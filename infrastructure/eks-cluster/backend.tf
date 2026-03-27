terraform {
  backend "s3" {
    bucket         = "geemu-bucket"
    region         = "us-east-1"
    key            = "EKS-TF/terraform.tfstate"
    dynamodb_table = "geemu-table"
    encrypt        = true
    use_lockfile   = true
  }
  required_version = ">=1.14.0"
  required_providers {
    aws = {
      version = ">= 5.49.0"
      source  = "hashicorp/aws"
    }
  }
}