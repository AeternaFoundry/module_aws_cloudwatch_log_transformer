output "cloudwatch_log_transformers_log_group_arn" {
  description = "Map of log_group_arn values across all cloudwatch_log_transformers, keyed the same as var.cloudwatch_log_transformers"
  value       = { for k, v in aws_cloudwatch_log_transformer.cloudwatch_log_transformers : k => v.log_group_arn if v.log_group_arn != null && length(v.log_group_arn) > 0 }
}
output "cloudwatch_log_transformers_region" {
  description = "Map of region values across all cloudwatch_log_transformers, keyed the same as var.cloudwatch_log_transformers"
  value       = { for k, v in aws_cloudwatch_log_transformer.cloudwatch_log_transformers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudwatch_log_transformers_transformer_config" {
  description = "Map of transformer_config values across all cloudwatch_log_transformers, keyed the same as var.cloudwatch_log_transformers"
  value       = { for k, v in aws_cloudwatch_log_transformer.cloudwatch_log_transformers : k => v.transformer_config if v.transformer_config != null && length(v.transformer_config) > 0 }
}

