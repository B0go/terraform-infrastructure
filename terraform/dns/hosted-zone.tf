resource "aws_route53_zone" "victorbogo-me-public" {
  name = "victorbogo.me"
  comment = "Hosted zone used to manage main victorbogo.me domain DNS"
  force_destroy = false

  tags = {
    Environment = "prod"
    ManagedBy = "terraform"
  }
}
