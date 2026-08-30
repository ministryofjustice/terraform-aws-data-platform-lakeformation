# Data Lake Settings

Creates an AWS IAM OIDC provider.

<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_main"></a> [main](#module\_main) | git::https://github.com/terraform-aws-modules/terraform-aws-iam.git//modules/iam-oidc-provider | 1d73bcb359419e1b41872ac5ccaf8808b8f1150e |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_url"></a> [url](#input\_url) | The URL of the identity provider. Corresponds to the iss claim | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN assigned by AWS for this provider |
| <a name="output_url"></a> [url](#output\_url) | The URL of the identity provider. Corresponds to the iss claim |
<!-- END_TF_DOCS -->

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
