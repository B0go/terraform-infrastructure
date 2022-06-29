resource "godaddy_domain_record" "victorbogo-me-public" {
  domain = "victorbogo.me"

  record {
    name     = "@"
    type     = mailgun_domain.victorbogo-me.receiving_records[0].record_type
    data     = mailgun_domain.victorbogo-me.receiving_records[0].value
    ttl      = 600
    priority = mailgun_domain.victorbogo-me.receiving_records[0].priority
  }

  record {
    name     = "@"
    type     = mailgun_domain.victorbogo-me.receiving_records[1].record_type
    data     = mailgun_domain.victorbogo-me.receiving_records[1].value
    ttl      = 600
    priority = mailgun_domain.victorbogo-me.receiving_records[1].priority
  }

  record {
    name = replace(mailgun_domain.victorbogo-me.sending_records[0].name, ".victorbogo.me", "")
    type = mailgun_domain.victorbogo-me.sending_records[0].record_type
    data = mailgun_domain.victorbogo-me.sending_records[0].value
  }

  record {
    name = replace(mailgun_domain.victorbogo-me.sending_records[1].name, ".victorbogo.me", "")
    type = mailgun_domain.victorbogo-me.sending_records[1].record_type
    data = mailgun_domain.victorbogo-me.sending_records[1].value
  }

  record {
    name = replace(mailgun_domain.victorbogo-me.sending_records[2].name, ".victorbogo.me", "")
    type = mailgun_domain.victorbogo-me.sending_records[2].record_type
    data = mailgun_domain.victorbogo-me.sending_records[2].value
  }

  nameservers = aws_route53_zone.victorbogo-me-public.name_servers
}
