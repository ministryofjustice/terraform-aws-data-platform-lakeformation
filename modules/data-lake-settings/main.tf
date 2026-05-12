resource "aws_lakeformation_data_lake_settings" "main" {
  admins                  = var.admins
  read_only_admins        = var.read_only_admins
  trusted_resource_owners = var.trusted_resource_owners

  parameters = {
    "CROSS_ACCOUNT_VERSION" = var.cross_account_version
  }
}

// TODO: is this required? if not remove it, and add the removed block back in
resource "aws_iam_service_linked_role" "lakeformation" {
  aws_service_name = "lakeformation.amazonaws.com"
}

# removed {
#   from = aws_iam_service_linked_role.lakeformation

#   lifecycle {
#     destroy = false
#   }
# }
