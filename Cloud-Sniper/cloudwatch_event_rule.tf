resource "aws_cloudwatch_event_rule" "aws_cloudwatch_event_rule_cloud_sniper" {
    name = "aws_cloudwatch_event_rule_cloud_sniper"
    description = "aws_cloudwatch_event_rule_cloud_sniper"

  event_pattern = <<PATTERN
{
  "source": [
    "aws.guardduty"
  ],
  "detail-type": [
    "GuardDuty Finding"
  ]
}
PATTERN
}

resource "aws_cloudwatch_event_rule" "aws_cloudwatch_event_rule_schedule_cloud_sniper" {
    name = "aws_cloudwatch_event_rule_schedule_cloud_sniper"
    description = "aws_cloudwatch_event_rule_schedule_cloud_sniper"
    schedule_expression = "rate(5 minutes)"
}
