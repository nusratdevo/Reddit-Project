terraform {
  backend "s3" {
    bucket         = "aws-eks-baket1"
    region         = "us-east-1"
    key            = "EKS-TF/terraform.tfstate"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = "~> 5.0"
      source  = "hashicorp/aws"
    }
  }
}
