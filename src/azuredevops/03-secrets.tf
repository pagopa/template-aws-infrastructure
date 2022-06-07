data "aws_secretsmanager_secret" "devops_dev" {
  name = "devops"
}

data "aws_secretsmanager_secret" "devops_uat" {
  name = "devops"
}

data "aws_secretsmanager_secret_version" "devops_uat" {
  secret_id = data.aws_secretsmanager_secret.devops_uat.id
}

data "aws_secretsmanager_secret" "devops_prod" {
  provider = aws.prod
  name     = "devops"
}

data "aws_secretsmanager_secret_version" "devops_prod" {
  provider  = aws.prod
  secret_id = data.aws_secretsmanager_secret.devops_prod.id
}
