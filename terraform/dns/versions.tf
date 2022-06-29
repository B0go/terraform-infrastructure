terraform {
  required_version = "~> 1.2.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.20.1"
    }
    // For this provider to work on Apple Silicon based macs, terraform for darwin_amd64 should be installed.
    godaddy = {
      source  = "n3integration/godaddy"
      version = "1.8.7"
    }
    mailgun = {
      source  = "wgebis/mailgun"
      version = "0.7.2"
    }
  }
}
