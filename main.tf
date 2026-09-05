resource "aws_secretsmanager_secret" "app_secret" {
  name        = "my-app-secret"
  description = "Application secrets"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
