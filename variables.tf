variable "user_name" {
  type        = string
  description = "(Required) The user's name."
}

variable "policy_arn" {
  type        = string
  description = "(Required) The ARN of the policy you want to apply"
}
