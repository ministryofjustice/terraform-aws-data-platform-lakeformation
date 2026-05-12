# Data Lake Storage

Manages AWS Lake Formation data lake storage.

<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<!-- textlint-disable terminology -->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 6.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms_key"></a> [kms\_key](#module\_kms\_key) | git::https://github.com/terraform-aws-modules/terraform-aws-kms.git | 407e3db34a65b384c20ef718f55d9ceacb97a846 |
| <a name="module_lakeformation_access_iam_role"></a> [lakeformation\_access\_iam\_role](#module\_lakeformation\_access\_iam\_role) | git::https://github.com/terraform-aws-modules/terraform-aws-iam.git//modules/iam-role | 1d73bcb359419e1b41872ac5ccaf8808b8f1150e |
| <a name="module_s3_bucket"></a> [s3\_bucket](#module\_s3\_bucket) | git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git | af0286ff37a66c2b79faf360e6e2663744b8e5b5 |

## Resources

| Name | Type |
|------|------|
| [aws_lakeformation_permissions.share_data_location](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lakeformation_permissions) | resource |
| [aws_lakeformation_resource.s3_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lakeformation_resource) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.s3_bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_governance_account_id"></a> [governance\_account\_id](#input\_governance\_account\_id) | AWS Account ID of the Data Platform Governance account | `string` | n/a | yes |
| <a name="input_lakeformation_access_role_arn"></a> [lakeformation\_access\_role\_arn](#input\_lakeformation\_access\_role\_arn) | ARN of Data Platform Governance IAM role | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kms_key_arn"></a> [kms\_key\_arn](#output\_kms\_key\_arn) | KMS Key ARN |
| <a name="output_s3_bucket_arn"></a> [s3\_bucket\_arn](#output\_s3\_bucket\_arn) | S3 Bucket ARN |
<!-- END_TF_DOCS -->

<!-- textlint-enable terminology -->
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
