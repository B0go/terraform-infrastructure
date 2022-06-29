resource "mailgun_domain" "victorbogo-me" {
  name        = "victorbogo.me"
  region      = "us"
  spam_action = "disabled"
  wildcard    = false
}
