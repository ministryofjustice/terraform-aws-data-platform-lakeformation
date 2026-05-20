resource "aws_lakeformation_data_lake_settings" "main" {
  admins                  = var.admins
  read_only_admins        = var.read_only_admins
  trusted_resource_owners = var.trusted_resource_owners

  parameters = {
    "CROSS_ACCOUNT_VERSION" = var.cross_account_version
  }
}
