resource "aws_cloudwatch_composite_alarm" "request_event-command-transformer-composite" {
  alarm_name        = "${local.csi}-request-event-command-transformer-reliability"
  alarm_description = "RELIABILITY: Composite for the request event to command transformer component of App Response"

  actions_enabled = "false"
  alarm_actions   = []
  ok_actions      = []

  alarm_rule = join(" OR ", [
    "ALARM(\"${aws_cloudwatch_metric_alarm.request_event_command_transformer_errors.alarm_name}\")",
    "ALARM(\"${aws_cloudwatch_metric_alarm.sqs_request_inbound_event_dlq.alarm_name}\")"
  ])

  depends_on = [
    aws_cloudwatch_metric_alarm.request_event_command_transformer_errors,
    aws_cloudwatch_metric_alarm.sqs_request_inbound_event_dlq
  ]
}
