module "kms_key" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-kms.git?ref=407e3db34a65b384c20ef718f55d9ceacb97a846" # v4.2.0

  enable_default_policy = true

  aliases = ["s3/${local.bucket_name}"]

  key_statements = [
    {
      sid    = "AllowLakeFormationAccess"
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
          identifiers = [var.lakeformation_access_role_arn]
        }
      ]
    }
  ]
}
