
output "website_bucket_name" {
  description = "Name (id) of the bucket"
  value       = module.website_s3_bucket.name
}

output "website_bucket_domain" {
  description = "Domain name of the bucket"
  value       = module.website_s3_bucket.domain
}

output "url" {
  description = "url"
  value       = "http://${module.website_s3_bucket.name}.${module.website_s3_bucket.domain}"
}