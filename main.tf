provider "google" {
  project = "hopeful-subject-475706-d5"
  region  = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name          = "unil-demo-bucket"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30
    }
  }
}