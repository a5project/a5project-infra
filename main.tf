terraform {
  cloud {
    organization = "a5project"
    workspaces {
      name = "learn-tfc-aws"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.REGION_NAME
}

module "webapp" {
  source = "./modules/webapp"

  # Input variables
  environment   = var.ENVIRONMENT
  app_name      = var.APP_NAME
  domain        = var.DOMAIN
  instance_type = var.INSTANCE_TYPE
  db_name       = var.DB_NAME
  db_user       = var.DB_USER
  db_pass       = var.DB_PASS
  bucket_name   = var.BUCKET_NAME
}
