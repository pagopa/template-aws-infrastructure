env_short   = "d"
environment = "dev"


# Ref: https://pagopa.atlassian.net/wiki/spaces/DEVOPS/pages/132810155/Azure+-+Naming+Tagging+Convention#Tagging
tags = {
  CreatedBy   = "Terraform"
  Environment = "Dev"
  Owner       = "<name of the project>"
  Source      = "<git repo url>"
  CostCenter  = "<eg: TS310 - PAGAMENTI e SERVIZI>"
}