# Data Lake Settings


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.15 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 6.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aws_lakeformation_data_lake_settings.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lakeformation_data_lake_settings) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_admins"></a> [admins](#input\_admins) | Set of ARNs of AWS Lake Formation principals | `set(string)` | n/a | yes |
| <a name="input_cross_account_version"></a> [cross\_account\_version](#input\_cross\_account\_version) | Version of cross-account permissions, see https://docs.aws.amazon.com/lake-formation/latest/dg/optimize-ram.html | `string` | `"5"` | no |
| <a name="input_read_only_admins"></a> [read\_only\_admins](#input\_read\_only\_admins) | Set of ARNs of AWS Lake Formation principals with only view access to the resources | `set(string)` | `[]` | no |
| <a name="input_trusted_resource_owners"></a> [trusted\_resource\_owners](#input\_trusted\_resource\_owners) | List of the resource-owning account IDs that the caller's account can use to share their user access details | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
