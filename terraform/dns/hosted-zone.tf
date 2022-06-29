locals {
  receiving_records_strings = [for record in mailgun_domain.victorbogo-me.receiving_records : "${record.priority} ${record.value}"]
}

resource "aws_route53_zone" "victorbogo-me-public" {
  name          = "victorbogo.me"
  comment       = "Hosted zone used to manage main victorbogo.me domain DNS"
  force_destroy = false

  tags = {
    Environment = "prod"
    ManagedBy   = "terraform"
  }
}

resource "aws_route53_record" "mailgun-receiving-record" {
  zone_id = aws_route53_zone.victorbogo-me-public.zone_id
  name    = "victorbogo.me"
  type    = "MX"
  ttl     = "300"
  records = local.receiving_records_strings
}

resource "aws_route53_record" "mailgun-sending-record" {
  for_each = { for record in mailgun_domain.victorbogo-me.sending_records : record.value => record }
  zone_id  = aws_route53_zone.victorbogo-me-public.zone_id
  name     = each.value.name
  type     = each.value.record_type
  ttl      = "300"
  records  = [each.key]
}
