output "bucket_name" {
  value       = google_storage_bucket.bucket.name
  description = "The name of the GCS bucket."
}

output "bucket_url" {
  value       = "gs://${google_storage_bucket.bucket.name}"
  description = "The gs:// URL of the GCS bucket."
}

output "bucket_self_link" {
  value       = google_storage_bucket.bucket.self_link
  description = "The URI of the created bucket resource."
}

output "bucket_location" {
  value       = google_storage_bucket.bucket.location
  description = "The location of the bucket."
}
