output "provider_arn" {
  description = "The ARN of the IAM OIDC provider"
  value       = join("", aws_iam_openid_connect_provider.gitlab[*].arn)
}

output "provider_id" {
  description = "The ID of the IAM OIDC provider"
  value       = join("", aws_iam_openid_connect_provider.gitlab[*].id)
}