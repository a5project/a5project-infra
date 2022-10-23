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
  region = var.region_name
}

module "webapp" {
  source = "./modules/webapp"

  # Input variables
  environment = "development"
  app_name = "webapp"
  domain = "webapp-a5project.com"
  instance_type = "t2.micro"
  db_name = "webappdb"
  db_user = "webappdbuser"
  db_pass = var.DB_PASS
  bucket_name = "webapp-public-bucket"
}
