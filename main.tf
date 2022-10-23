terraform {
  cloud {
    organization = "a5project"

    workspaces {
      name = "a5project-api"
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
  app_name      = "${var.APP_NAME}-${var.ENVIRONMENT}"
  domain        = "${var.ENVIRONMENT}-${var.DOMAIN}"
  instance_type = var.INSTANCE_TYPE
  db_name       = "${var.APP_NAME}db${var.ENVIRONMENT}"
  db_user       = "${var.APP_NAME}dbuser${var.ENVIRONMENT}"
  db_pass       = var.DB_PASS
  bucket_name   = "${var.APP_NAME}-public-${var.ENVIRONMENT}-20220101"
}
