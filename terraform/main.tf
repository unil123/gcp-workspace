resource "google_storage_bucket" "imported_bucket" {
  name     = "tf-state-unil-2026"
  location = "asia-south1 (Mumbai)"
}