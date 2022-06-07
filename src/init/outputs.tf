output "backend_bucket_name" {
  value = aws_s3_bucket.terraform_states.bucket
}

output "dynamodb_lock_table" {
  value = aws_dynamodb_table.dynamodb-terraform-state-lock.name
}

output "iac_access_key" {
  value = aws_iam_access_key.iac.id
}

output "iac_access_key_secret" {
  value     = aws_iam_access_key.iac.secret
  sensitive = true
}