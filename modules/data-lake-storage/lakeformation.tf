resource "aws_lakeformation_resource" "s3_bucket" {
  arn      = module.s3_bucket.s3_bucket_arn
  role_arn = module.lakeformation_access_iam_role.arn
}

resource "aws_lakeformation_permissions" "share_data_location" {
  principal                     = var.governance_account_id
  permissions                   = ["DATA_LOCATION_ACCESS"]
  permissions_with_grant_option = ["DATA_LOCATION_ACCESS"]

  data_location {
    arn = module.s3_bucket.s3_bucket_arn
  }
}
