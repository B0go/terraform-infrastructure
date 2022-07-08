resource "aws_cloudwatch_metric_alarm" "total-estimate-charge" {
  alarm_name                = "total-estimate-charge"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "2"
  metric_name               = "EstimatedCharges"
  namespace                 = "AWS/Billing"
  period                    = "120"
  statistic                 = "Average"
  threshold                 = "10"
  alarm_description         = "This alart monitors that the total estimated charge is below a threshold"
  alarm_actions = [aws_sns_topic.cloudwatch-alarms-topic.arn]
}
