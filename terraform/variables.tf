variable "bucket_name" {
  description = "Name of the GCS bucket used for Terraform state"
  type        = string
  default     = "my-unique-bucket-name-123"
}
