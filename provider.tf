terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  cloud {
  organization = "alain_basabe o como lo hayas llamado"
  hostname     = "app.terraform.io" # Optional; defaults to app.terraform.io
  workspaces {
    name = "como lo quieras llamar"
  }
  }
   required_version = ">= 1.1.6"
}
provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}


