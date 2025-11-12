provider "google" {
  project = "hopeful-subject-475706-d5"
  region  = "us-central1"
  credentials = null
}

resource "google_storage_bucket" "my_bucket" {
  name     = "my-unique-bucket-name-123"
  location = "US"
}
