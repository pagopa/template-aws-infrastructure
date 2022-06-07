# Github service connection (read-only)
resource "azuredevops_serviceendpoint_github" "github_ro" {
  project_id            = azuredevops_project.this.id
  service_endpoint_name = "github-ro"
  auth_personal {
    personal_access_token = jsondecode(data.aws_secretsmanager_secret_version.devops_uat.secret_string)["github_ro_token"]
  }
  lifecycle {
    ignore_changes = [description, authorization]
  }
}

# Github service connection (pull request)
resource "azuredevops_serviceendpoint_github" "github_pr" {

  project_id            = azuredevops_project.this.id
  service_endpoint_name = "github-pr"
  auth_personal {
    personal_access_token = jsondecode(data.aws_secretsmanager_secret_version.devops_uat.secret_string)["github_pr_token"]
  }
  lifecycle {
    ignore_changes = [description, authorization]
  }
}

# Service connection to connecto to AWS.
resource "azuredevops_serviceendpoint_aws" "uat_serviceendpoint" {
  project_id            = azuredevops_project.this.id
  service_endpoint_name = "AWS Uat"
  description           = "Managed by AzureDevOps"

  access_key_id = jsondecode(
  data.aws_secretsmanager_secret_version.devops_uat.secret_string)["aws_iac_access_key_id"]
  secret_access_key = jsondecode(
  data.aws_secretsmanager_secret_version.devops_uat.secret_string)["aws_iac_secret_access_key"]
}

resource "azuredevops_serviceendpoint_aws" "prod_serviceendpoint" {
  project_id            = azuredevops_project.this.id
  service_endpoint_name = "AWS Prod"
  description           = "Managed by AzureDevOps"

  access_key_id = jsondecode(
  data.aws_secretsmanager_secret_version.devops_prod.secret_string)["aws_iac_access_key_id"]
  secret_access_key = jsondecode(
  data.aws_secretsmanager_secret_version.devops_prod.secret_string)["aws_iac_secret_access_key"]
}