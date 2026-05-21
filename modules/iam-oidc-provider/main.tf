module "main" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-iam.git//modules/iam-oidc-provider?ref=1d73bcb359419e1b41872ac5ccaf8808b8f1150e" # v6.6.0

  url = var.url
}
