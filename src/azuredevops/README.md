## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> <terraform latest version eg: 1.1.0> |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> <aws provider version eg: 3.63.0> |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | = 0.1.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> <aws provider version eg: 3.63.0> |
| <a name="provider_aws.prod"></a> [aws.prod](#provider\_aws.prod) | ~> <aws provider version eg: 3.63.0> |
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | = 0.1.8 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iac_deploy"></a> [iac\_deploy](#module\_iac\_deploy) | git::https://github.com/pagopa/azuredevops-tf-modules.git//azuredevops_build_definition_deploy?ref=v2.0.5 |  |

## Resources

| Name | Type |
|------|------|
| [azuredevops_project.this](https://registry.terraform.io/providers/microsoft/azuredevops/0.1.8/docs/resources/project) | resource |
| [azuredevops_project_features.features](https://registry.terraform.io/providers/microsoft/azuredevops/0.1.8/docs/resources/project_features) | resource |
| [azuredevops_serviceendpoint_aws.prod_serviceendpoint](https://registry.terraform.io/providers/microsoft/azuredevops/0.1.8/docs/resources/serviceendpoint_aws) | resource |
| [azuredevops_serviceendpoint_aws.uat_serviceendpoint](https://registry.terraform.io/providers/microsoft/azuredevops/0.1.8/docs/resources/serviceendpoint_aws) | resource |
| [azuredevops_serviceendpoint_github.github_pr](https://registry.terraform.io/providers/microsoft/azuredevops/0.1.8/docs/resources/serviceendpoint_github) | resource |
| [azuredevops_serviceendpoint_github.github_ro](https://registry.terraform.io/providers/microsoft/azuredevops/0.1.8/docs/resources/serviceendpoint_github) | resource |
| [aws_secretsmanager_secret.devops_dev](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret) | data source |
| [aws_secretsmanager_secret.devops_prod](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret) | data source |
| [aws_secretsmanager_secret.devops_uat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret) | data source |
| [aws_secretsmanager_secret_version.devops_prod](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret_version) | data source |
| [aws_secretsmanager_secret_version.devops_uat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret_version) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_description"></a> [project\_description](#input\_project\_description) | Azure devops project description. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Azure devops project name. | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS default region | `string` | `"eu-south-1"` | no |
| <a name="input_iac"></a> [iac](#input\_iac) | n/a | `map` | <pre>{<br>  "pipeline": {<br>    "enable_code_review": true,<br>    "enable_deploy": true<br>  },<br>  "repository": {<br>    "branch_name": "refs/heads/main",<br>    "name": "<project name>",<br>    "organization": "pagopa",<br>    "pipelines_path": "src/pipelines",<br>    "yml_prefix_name": null<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project"></a> [project](#output\_project) | n/a |
