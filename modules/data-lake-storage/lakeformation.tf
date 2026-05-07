resource "aws_lakeformation_permissions" "share_data_location" {
  principal                     = var.governance_account_id
  permissions                   = ["DATA_LOCATION_ACCESS"]
  permissions_with_grant_option = ["DATA_LOCATION_ACCESS"]

  data_location {
    arn = module.s3_bucket.s3_bucket_arn
  }
}
