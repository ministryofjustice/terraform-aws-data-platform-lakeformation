variable "admins" {
  description = "Set of ARNs of AWS Lake Formation principals"
  type        = set(string)
}

variable "read_only_admins" {
  description = "Set of ARNs of AWS Lake Formation principals with only view access to the resources"
  type        = set(string)
  default     = []
}

variable "trusted_resource_owners" {
  description = "List of the resource-owning account IDs that the caller's account can use to share their user access details"
  type        = set(string)
  default     = []
}

variable "cross_account_version" {
  description = "Version of cross-account permissions. See [AWS Lake Formation cross-account optimization](https://docs.aws.amazon.com/lake-formation/latest/dg/optimize-ram.html)."
  type        = string
  default     = "5"
}
