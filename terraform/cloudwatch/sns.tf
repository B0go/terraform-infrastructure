resource "aws_sns_topic" "cloudwatch-alarms-topic" {
  name = "cloudwatch-alarms-topic"
}

resource "aws_sns_topic_subscription" "victorbogo-me-topic-subscription" {
  topic_arn = aws_sns_topic.cloudwatch-alarms-topic.arn
  protocol  = "email"
  endpoint  = "alarms@victorbogo.me"
}
