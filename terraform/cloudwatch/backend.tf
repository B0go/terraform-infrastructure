terraform {
  backend "s3" {
    profile        = "personal-aws-terraform"
    bucket         = "b0go-terraform-state"
    key            = "terraform-infrastructure/terraform/cloudwatch/terraform.tfstate"
    dynamodb_table = "terraform-state-lock"
    region         = "us-east-1"
    encrypt        = true
  }
}
