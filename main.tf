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

module "web-app" {
  source = "./modules/web-app"

  # Input variables
  environment = "development"
  app_name = "web-app"
  domain = "a5projectdevops.com"
  instance_type = "t2.micro"
  db_name = "mydb"
  db_user = "foo"
  db_pass = var.db_pass
  bucket_name = "a5project-bucket"
}
