resource "aws_cloudwatch_metric_alarm" "request_event_command_transformer_errors" {
  alarm_name          = "${local.csi}-request-event-command-transformer-errors"
  alarm_description   = "RELIABILITY: Alarm for Request Event Command Transformer Lambda function errors"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  period              = 300
  statistic           = "Sum"
  threshold           = 1
  actions_enabled     = true
  treat_missing_data  = "notBreaching"

  dimensions = {
    FunctionName = module.lambda_request_event_command_transformer.function_name
  }
}
