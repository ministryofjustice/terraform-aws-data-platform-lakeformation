output "kms_key_arn" {
  description = "KMS Key ARN"
  value       = module.kms_key.key_arn
}

output "s3_bucket_arn" {
  description = "S3 Bucket ARN"
  value       = module.s3_bucket.s3_bucket_arn
}
