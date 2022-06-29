provider "aws" {
  region  = "us-east-1"
  profile = "personal-aws-terraform"
}

provider "mailgun" {
  api_key = var.MAILGUN_API_KEY
}
