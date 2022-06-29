terraform {
  required_version = "~> 1.2.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.15.0"
    }
    // For this provider to work on Apple Silicon based macs, terraform for darwin_amd64 should be installed.
    mailgun = {
      source  = "wgebis/mailgun"
      version = "0.7.2"
    }
  }
}
