locals {
  prefix      = "moj-data-lake"
  bucket_name = "${local.prefix}-${random_string.bucket_suffix.result}"
}

resource "random_string" "bucket_suffix" {
  length  = 49
  lower   = true
  upper   = false
  numeric = true
  special = false
}

module "kms_key" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-kms.git?ref=407e3db34a65b384c20ef718f55d9ceacb97a846" # v4.2.0

  enable_default_policy = true

  aliases = ["s3/${local.bucket_name}"]

  key_statements = [
    {
      sid    = "AllowLakeFormationService"
      effect = "Allow"
      actions = [
        "kms:Decrypt",
        "kms:DescribeKey",
        "kms:GenerateDataKey"
      ]
      resources = ["*"]
      principals = [
        {
          type        = "Service"
          identifiers = ["lakeformation.amazonaws.com"]
        },
        {
          type        = "AWS"
          identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/aws-service-role/lakeformation.amazonaws.com/AWSServiceRoleForLakeFormationDataAccess"]
        }
      ]
    }
  ]
}

# module "s3_bucket" {
#   source = "git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git?ref=af0286ff37a66c2b79faf360e6e2663744b8e5b5" # v5.13.0

#   bucket = local.bucket_name
# }
