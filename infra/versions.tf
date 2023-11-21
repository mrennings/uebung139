terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "u139remstate"
    key            = "state/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    #dynamodb_table = "u139remstate"
    profile        = "sandbox"
  }
}

provider "aws" {
  region  = var.region
  profile = var.aws_profile
}
