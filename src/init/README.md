## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> <terraform latest version eg: 1.1.0> |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> <terraform aws plugin version eg: 4.0.0> |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> <terraform aws plugin version eg: 4.0.0> |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.dynamodb-terraform-state-lock](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_iam_access_key.iac](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_group.admins](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_policy_attachment.admins](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_user.iac](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_group_membership.iac](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership) | resource |
| [aws_s3_bucket.terraform_states](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.terraform_states](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_versioning.terraform_states](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [random_integer.bucket_suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) | resource |
| [aws_iam_policy.admin_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region (default is Milan) | `string` | `"eu-south-1"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment. Possible values are: Dev, Uat, Prod | `string` | `"Uat"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(any)` | <pre>{<br>  "CreatedBy": "Terraform",<br>  "Environment": "Uat"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_backend_bucket_name"></a> [backend\_bucket\_name](#output\_backend\_bucket\_name) | n/a |
| <a name="output_dynamodb_lock_table"></a> [dynamodb\_lock\_table](#output\_dynamodb\_lock\_table) | n/a |
| <a name="output_iac_access_key"></a> [iac\_access\_key](#output\_iac\_access\_key) | n/a |
| <a name="output_iac_access_key_secret"></a> [iac\_access\_key\_secret](#output\_iac\_access\_key\_secret) | n/a |
