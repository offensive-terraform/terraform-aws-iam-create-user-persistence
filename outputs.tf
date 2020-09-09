output "aws_iam_user" {
  value = aws_iam_user.this.name
}

output "aws_iam_user_policy_arn" {
  value = aws_iam_user_policy_attachment.this.policy_arn
}

output "access_key" {
  value = aws_iam_access_key.this.id
}

output "secret_key" {
  value = aws_iam_access_key.this.secret
}
