<!-- BEGIN_TF_DOCS -->
<!-- markdownlint-disable -->
<!-- vale off -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.13 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_account_id"></a> [aws\_account\_id](#input\_aws\_account\_id) | The AWS Account ID (numeric) | `string` | n/a | yes |
| <a name="input_component"></a> [component](#input\_component) | The variable encapsulating the name of this component | `string` | `"response"` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A map of default tags to apply to all taggable resources within the component | `map(string)` | `{}` | no |
| <a name="input_enable_event_anomaly_detection"></a> [enable\_event\_anomaly\_detection](#input\_enable\_event\_anomaly\_detection) | Enable CloudWatch anomaly detection alarm for inbound event queue message reception | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The name of the tfscaffold environment | `string` | n/a | yes |
| <a name="input_event_anomaly_band_width"></a> [event\_anomaly\_band\_width](#input\_event\_anomaly\_band\_width) | The width of the anomaly detection band. Higher values (e.g. 4-6) reduce sensitivity and noise, lower values (e.g. 2-3) increase sensitivity. Recommended: 2-4. | `number` | `3` | no |
| <a name="input_event_anomaly_evaluation_periods"></a> [event\_anomaly\_evaluation\_periods](#input\_event\_anomaly\_evaluation\_periods) | Number of evaluation periods for the anomaly alarm. Each period is defined by event\_anomaly\_period. | `number` | `2` | no |
| <a name="input_event_anomaly_period"></a> [event\_anomaly\_period](#input\_event\_anomaly\_period) | The period in seconds over which the specified statistic is applied for anomaly detection. Minimum 300 seconds (5 minutes). Recommended: 300-600. | `number` | `300` | no |
| <a name="input_eventbus_account_id"></a> [eventbus\_account\_id](#input\_eventbus\_account\_id) | The AWS Account ID for the event bus | `string` | n/a | yes |
| <a name="input_force_lambda_code_deploy"></a> [force\_lambda\_code\_deploy](#input\_force\_lambda\_code\_deploy) | If the lambda package in s3 has the same commit id tag as the terraform build branch, the lambda will not update automatically. Set to True if making changes to Lambda code from on the same commit for example during development | `bool` | `false` | no |
| <a name="input_group"></a> [group](#input\_group) | The group variables are being inherited from (often synonmous with account short-name) | `string` | n/a | yes |
| <a name="input_kms_deletion_window"></a> [kms\_deletion\_window](#input\_kms\_deletion\_window) | When a kms key is deleted, how long should it wait in the pending deletion state? | `string` | `"30"` | no |
| <a name="input_log_level"></a> [log\_level](#input\_log\_level) | The log level to be used in lambda functions within the component. Any log with a lower severity than the configured value will not be logged: https://docs.python.org/3/library/logging.html#levels | `string` | `"INFO"` | no |
| <a name="input_log_retention_in_days"></a> [log\_retention\_in\_days](#input\_log\_retention\_in\_days) | The retention period in days for the Cloudwatch Logs events to be retained, default of 0 is indefinite | `number` | `0` | no |
| <a name="input_parent_acct_environment"></a> [parent\_acct\_environment](#input\_parent\_acct\_environment) | Name of the environment responsible for the acct resources used, affects things like DNS zone. Useful for named dev environments | `string` | `"main"` | no |
| <a name="input_project"></a> [project](#input\_project) | The name of the tfscaffold project | `string` | n/a | yes |
| <a name="input_queue_batch_size"></a> [queue\_batch\_size](#input\_queue\_batch\_size) | maximum number of queue items to process | `number` | `10` | no |
| <a name="input_queue_batch_window_seconds"></a> [queue\_batch\_window\_seconds](#input\_queue\_batch\_window\_seconds) | maximum time in seconds between processing events | `number` | `10` | no |
| <a name="input_region"></a> [region](#input\_region) | The AWS Region | `string` | n/a | yes |
| <a name="input_shared_infra_account_id"></a> [shared\_infra\_account\_id](#input\_shared\_infra\_account\_id) | The AWS Shared Infra Account ID (numeric) | `string` | n/a | yes |
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module\_kms) | https://github.com/NHSDigital/nhs-notify-shared-modules/releases/download/v2.0.20/terraform-kms.zip | n/a |
| <a name="module_lambda_request_event_command_transformer"></a> [lambda\_request\_event\_command\_transformer](#module\_lambda\_request\_event\_command\_transformer) | https://github.com/NHSDigital/nhs-notify-shared-modules/releases/download/v2.0.29/terraform-lambda.zip | n/a |
| <a name="module_sqs_request_inbound_event"></a> [sqs\_request\_inbound\_event](#module\_sqs\_request\_inbound\_event) | https://github.com/NHSDigital/nhs-notify-shared-modules/releases/download/v2.0.20/terraform-sqs.zip | n/a |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_request_inbound_event_subscriber_anomaly_alarm"></a> [request\_inbound\_event\_subscriber\_anomaly\_alarm](#output\_request\_inbound\_event\_subscriber\_anomaly\_alarm) | Request inbound event subscriber anomaly detection alarm details |
<!-- vale on -->
<!-- markdownlint-enable -->
<!-- END_TF_DOCS -->
