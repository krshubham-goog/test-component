variable "project_id" {
  type        = string
  description = "The ID of the GCP project where the bucket will be created."
}

variable "name" {
  type        = string
  description = "The name of the GCS bucket. Must be globally unique."
}

variable "location" {
  type        = string
  description = "The location of the bucket (e.g., US, EU, us-central1)."
  default     = "US"
}

variable "storage_class" {
  type        = string
  description = "The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE."
  default     = "STANDARD"
}

variable "versioning_enabled" {
  type        = bool
  description = "While set to true, versioning is enabled on this bucket."
  default     = true
}

variable "kms_key_name" {
  type        = string
  description = "The resource name of a Cloud KMS key that will be used to encrypt objects in this bucket. If not specified, Google-managed keys are used."
  default     = null
}

variable "force_destroy" {
  type        = bool
  description = "When deleting a bucket, this boolean option will delete all contained objects. If false, Terraform will fail to delete a non-empty bucket."
  default     = false
}

variable "labels" {
  type        = map(string)
  description = "A mapping of labels to assign to the bucket."
  default     = {}
}

