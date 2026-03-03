# Define the outputs for the component. The outputs may well be referenced by other component in the same or different environments using terraform_remote_state data sources...

# CloudWatch Anomaly Detection Alarm
output "request_inbound_event_subscriber_anomaly_alarm" {
  description = "Request inbound event subscriber anomaly detection alarm details"
  value = var.enable_event_anomaly_detection ? {
    arn  = aws_cloudwatch_metric_alarm.request_inbound_event_subscriber_anomaly[0].arn
    name = aws_cloudwatch_metric_alarm.request_inbound_event_subscriber_anomaly[0].alarm_name
  } : null
}
