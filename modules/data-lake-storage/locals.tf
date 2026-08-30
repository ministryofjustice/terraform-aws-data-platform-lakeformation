locals {
  bucket_name = "moj-data-lake-${data.aws_caller_identity.current.account_id}-${data.aws_region.current.region}-an"
}
