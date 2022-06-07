terraform {
  required_version = "~> <terraform latest version eg: 1.1.0>"

  ## TODO move this part as external configuration when you bild PROD.
  backend "s3" {
    bucket         = "<backend S3 bucket>"
    key            = "<env [dev|uat|prod]>/devops/tfstate"
    region         = "eu-south-1"
    dynamodb_table = "terraform-lock"
    profile        = "<aws account name>" # https://pagopa.atlassian.net/wiki/spaces/DEVOPS/pages/425066634/AWS+-+Accounts
  }

  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "= 0.1.8"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> <aws provider version eg: 3.63.0>"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# copy this block for each environment (aws account) you want to deploy into.
provider "aws" {
  alias   = "<environment [dev|uat|prod]>"
  profile = "<aws account name>"
  region  = var.aws_region
}
