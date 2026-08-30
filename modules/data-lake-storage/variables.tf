variable "data_platform_governance_account_id" {
  description = "AWS Account ID of the Data Platform Governance account"
  type        = string
}

variable "data_platform_account_id" {
  description = "AWS Account ID of the Data Platform account"
  type        = string
}

variable "dbt_access_trusted_role_arn" {
  description = "IAM role ARN allowed to assume the dbt-access role"
  type        = string
}
