data "aws_iam_policy_document" "s3_bucket_policy" {
  statement {
    sid     = "AllowLakeFormationListBucket"
    effect  = "Allow"
    actions = ["s3:ListBucket"]
    principals {
      type        = "AWS"
      identifiers = [var.lakeformation_access_role_arn]
    }
    resources = ["arn:aws:s3:::${local.bucket_name}"]
  }

  statement {
    sid    = "AllowLakeFormationObjectAccess"
    effect = "Allow"
    actions = [
      "s3:DeleteObject",
      "s3:GetObject",
      "s3:PutObject"
    ]
    principals {
      type        = "AWS"
      identifiers = [var.lakeformation_access_role_arn]
    }
    resources = ["arn:aws:s3:::${local.bucket_name}/*"]
  }
}

module "s3_bucket" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git?ref=af0286ff37a66c2b79faf360e6e2663744b8e5b5" # v5.13.0

  bucket           = local.bucket_name
  bucket_namespace = "account-regional"

  attach_policy = true
  policy        = data.aws_iam_policy_document.s3_bucket_policy.json

  server_side_encryption_configuration = {
    rule = {
      bucket_key_enabled = true
      apply_server_side_encryption_by_default = {
        kms_master_key_id = module.kms_key.key_arn
        sse_algorithm     = "aws:kms"
      }
    }
  }

  versioning = {
    enabled = true
  }
}
