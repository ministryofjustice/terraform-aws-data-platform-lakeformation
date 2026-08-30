output "arn" {
  description = "The ARN assigned by AWS for this provider"
  value       = module.main.arn
}

output "url" {
  description = "The URL of the identity provider. Corresponds to the iss claim"
  value       = module.main.url
}
