variable "admins" {
  type = list(string)
}

variable "read_only_admins" {
  type    = list(string)
  default = []
}

variable "trusted_resource_owners" {
  type    = list(string)
  default = []
}

variable "cross_account_version" {
  type    = string
  default = "5"
}
